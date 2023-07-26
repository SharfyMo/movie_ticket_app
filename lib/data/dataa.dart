import 'package:flutter/material.dart';
import 'package:movie_ticket_app/models/cast_model.dart';
import 'package:movie_ticket_app/models/movie_model.dart';

class MovieDataa {
  // late List<MovieModel> movieList;

  // movieList = List();

  List<MovieModel> movieList = [
    MovieModel(
        id: 0,
        name: 'BEIT EL RUBY',
        rating: 8.0,
        genre: [
          "Comedy",
        ],
        director: 'Peter Mimi',
        storyLine:
            'When a private family event gets leaked on social media, Ibrahim Al Ruby decides to live in a village with his wife and children, far from people and the pressure of modern life. After his younger brother, Ihab, convinces Ibrahim to go back to the city for some important paperwork, the family embarks on a trip full of surprises that is bound to change the lives of the “Rubies”.',
        image: Image.asset("assets/image/BEIT EL RUBY.jpg"),
        imageLogo: Image.asset("assets/image/ruubyy.png"),
        castList: [
          MovieCastModel(
            name: "Karim Abdul Aziz",
            photo: Image.asset("assets/image/cast/Karim-Abdel-Aziz.jpg"),
          ),
          MovieCastModel(
            name: "Karim Mahmoud Abdul-Aziz",
            photo:
                Image.asset("assets/image/cast/Karim Mahmoud Abdul-Aziz.jpg"),
          ),
          MovieCastModel(
            name: "Nour",
            photo: Image.asset("assets/image/cast/Nour.jpeg"),
          ),
          MovieCastModel(
            name: "Tara Emad",
            photo: Image.asset("assets/image/cast/Tara Emad.jpg"),
          )
        ]),
    //////
    MovieModel(
        id: 1,
        name: 'ELBO3BO3',
        rating: 5.0,
        genre: [
          "Comedy",
        ],
        director: 'Hussein Al-Manbawi',
        storyLine:
            "A pharmacist doctor falls in love with a criminal (Sultan) who decides to repent and leave criminality, and together with his friend (Suka), faces many situations that turn the course of events upside down.",
        image: Image.asset("assets/image/ELBO3BO3.jpg"),
        imageLogo: Image.asset("assets/image/boboo.png"),
        castList: [
          MovieCastModel(
            name: "Amir Karara",
            photo: Image.asset("assets/image/cast/Amir Karara.jpg"),
          ),
          MovieCastModel(
            name: "Yasmine Sabri",
            photo: Image.asset("assets/image/cast/Yasmine Sabri.png"),
          ),
          MovieCastModel(
            name: "Bassem Samra",
            photo: Image.asset("assets/image/cast/Bassem Samra.jpg"),
          ),
          MovieCastModel(
            name: "Mohamed Abdul Rahman",
            photo: Image.asset("assets/image/cast/Mohamed Abdul Rahman.jpg"),
          )
        ]),
    ///////
    MovieModel(
        id: 2,
        name: 'TAG',
        rating: 5.7,
        genre: [
          "Comedy",
        ],
        director: 'Sara Wafiq',
        storyLine:
            "Tag, a music teacher, meets Farida and a whirlwind love story develops between them. On his first birthday after they meet, Tag starts to display superhuman powers of mysterious origins! He does everything he can to keep them hidden but keeps facing situations that force him to intervene, especially when his brother suddenly walks back into his life.",
        image: Image.asset("assets/image/TAG.jpg"),
        imageLogo: Image.asset("assets/image/tagg.png"),
        castList: [
          MovieCastModel(
            name: "Tamer Hosny",
            photo: Image.asset("assets/image/cast/Tamer Hosny.jpg"),
          ),
          MovieCastModel(
            name: "Dina El Sherbini",
            photo: Image.asset("assets/image/cast/Dina El Sherbini.jpg"),
          ),
          MovieCastModel(
            name: "Amr Abdel Guelil",
            photo: Image.asset("assets/image/cast/Amr Abdel Guelil.jpg"),
          ),
        ]),
    ///////

    MovieModel(
        id: 3,
        name: 'Togo',
        rating: 8.0,
        genre: [
          "Drama",
        ],
        director: 'Ericson Core',
        storyLine:
            'Togo (1913 – December 5, 1929) was the lead sled dog of Leonhard Seppala and his dog sled team in the 1925 serum run to Nome across central and northern Alaska. Even though he covered more distance (260 miles) than his co-sledder Balto (55 miles), he didn\'t get as much fame.',
        image: Image.asset("assets/image/togo.jpeg"),
        imageLogo: Image.asset("assets/image/togologo.png"),
        castList: [
          MovieCastModel(
            name: "Willem Dafoe",
            photo: Image.asset("assets/image/cast/willem.jpg"),
          ),
          MovieCastModel(
            name: "Julianne Nicholson",
            photo: Image.asset("assets/image/cast/julianne.jpg"),
          ),
          MovieCastModel(
            name: "Christopher Heyerdahl",
            photo: Image.asset("assets/image/cast/christopher.jpg"),
          ),
          MovieCastModel(
            name: "Michael McElhatton",
            photo: Image.asset("assets/image/cast/michael.jpg"),
          )
        ]),

    MovieModel(
        id: 4,
        name: 'Joker',
        rating: 8.5,
        genre: ["Crime", "Drama"],
        director: 'Todd Phillips',
        storyLine:
            "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks -- the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he's part of the world around him. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.",
        image: Image.asset("assets/image/joker.jpeg"),
        imageLogo: Image.asset("assets/image/jokerlogo.png"),
        castList: [
          MovieCastModel(
            name: "Joaquin Phoenix",
            photo: Image.asset("assets/image/cast/joaquin.jpg"),
          ),
          MovieCastModel(
            name: "Robert De Niro",
            photo: Image.asset("assets/image/cast/niro.jpg"),
          ),
          MovieCastModel(
            name: "Zazie Beetz",
            photo: Image.asset("assets/image/cast/zazie.jpg"),
          ),
          MovieCastModel(
            name: "Frances Conroy",
            photo: Image.asset("assets/image/cast/frances.jpg"),
          ),
        ]),
    MovieModel(
        id: 5,
        name: 'Planet of the Apes',
        rating: 5.7,
        genre: ["Action", "Adventure", "Fantasy"],
        director: 'Tim Burton',
        storyLine:
            "Complex sociological themes run through this science-fiction classic about three astronauts marooned on a futuristic planet where apes rule and humans are slaves. The stunned trio discovers that these highly intellectual simians can both walk upright and talk. They have even established a class system and a political structure. The astronauts suddenly find themselves part of a devalued species, trapped and imprisoned by the apes.",
        image: Image.asset("assets/image/apes.jpeg"),
        imageLogo: Image.asset("assets/image/apeslogo.png"),
        castList: [
          MovieCastModel(
            name: "Cornelius",
            photo: Image.asset("assets/image/cast/cornelius.jpg"),
          ),
          MovieCastModel(
            name: "Dr. Zaius",
            photo: Image.asset("assets/image/cast/zaius.jpg"),
          ),
          MovieCastModel(
            name: "Dr. Zira",
            photo: Image.asset("assets/image/cast/zira.jpg"),
          ),
          MovieCastModel(
            name: "Nova",
            photo: Image.asset("assets/image/cast/nova.jpg"),
          )
        ]),
  ];
}
