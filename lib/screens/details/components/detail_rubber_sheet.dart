import 'package:flutter/material.dart';
import 'package:movie_ticket_app/constants/constants.dart';
import 'package:movie_ticket_app/models/movie_model.dart';
import 'package:movie_ticket_app/widget/genres_format.dart';
import 'package:movie_ticket_app/widget/star_rating.dart';
import 'package:rubber/rubber.dart';

class DetailRubberSheet extends StatefulWidget {
  final MovieModel movie;
  final ScrollController rubberSheetScrollController;
  final RubberAnimationController rubberSheetAnimationController;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  DetailRubberSheet(
    this.movie,
    this.rubberSheetScrollController,
    this.rubberSheetAnimationController,
  );

  @override
  // ignore: library_private_types_in_public_api
  _DetailRubberSheetState createState() => _DetailRubberSheetState();
}

class _DetailRubberSheetState extends State<DetailRubberSheet> {
  Widget _cast(List castList) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: 120.0,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: castList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: appPadding),
              child: SizedBox(
                width: size.width / 6,
                child: Column(
                  children: [
                    Container(
                      width: size.width / 6,
                      height: size.width / 6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: widget.movie.castList[index].photo.image,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(8.0),
                    //   child: Image(
                    //     image: widget.movie.castList[index].photo.image,
                    //     width: size.width / 6,
                    //   ),
                    // ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      widget.movie.castList[index].name,
                      style: TextStyle(
                        color: black.withOpacity(0.6),
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 600),
      tween: Tween<double>(begin: size.height / 2, end: 0),
      builder: (_, value, child) {
        return Transform.translate(
          offset: Offset(0, value),
          child: child,
        );
      },
      child: RubberBottomSheet(
        scrollController: widget.rubberSheetScrollController,
        animationController: widget.rubberSheetAnimationController,
        lowerLayer: Container(
          color: Colors.transparent,
        ),
        upperLayer: Column(
          children: [
            Center(
              child: Image(
                image: widget.movie.imageLogo.image,
                width: size.width / 2,
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50.0),
                  ),
                ),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(appPadding),
                  controller: widget.rubberSheetScrollController,
                  children: [
                    Text(
                      widget.movie.name,
                      style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    GenresFormat(widget.movie.genre, Colors.black),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.movie.rating.toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        StarRating(widget.movie.rating),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Director : ${widget.movie.director}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Actors',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //Function to show actors or cast

                    _cast(widget.movie.castList),

                    const Text(
                      'Story Line',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      widget.movie.storyLine,
                      style: TextStyle(
                        fontSize: 15,
                        color: black.withOpacity(0.6),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 100.0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
