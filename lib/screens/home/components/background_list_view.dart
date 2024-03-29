import 'package:flutter/material.dart';
import 'package:movie_ticket_app/constants/constants.dart';
import 'package:movie_ticket_app/data/dataa.dart';

class BackgroundListView extends StatefulWidget {
  final ScrollController backgroundScrollController;

  const BackgroundListView(this.backgroundScrollController, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BackgroundListViewState createState() => _BackgroundListViewState();
}

class _BackgroundListViewState extends State<BackgroundListView> {
  var movieData = MovieDataa();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
      controller: widget.backgroundScrollController,
      padding: EdgeInsets.zero,
      reverse: true,
      itemCount: movieData.movieList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) {
        return SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                left: -size.width / 3,
                right: -size.width / 3,
                child: Image(
                  image: movieData.movieList[index].image.image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: black.withOpacity(.4),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        // black.withOpacity(.9),
                        black.withOpacity(.3),
                        black.withOpacity(.95)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.5, 0.9]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
