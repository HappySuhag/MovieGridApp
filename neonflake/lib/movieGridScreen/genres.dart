import 'package:flutter/material.dart';
import 'package:neonflake/movieGridScreen/genreCard.dart';

class Genres extends StatelessWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Crime",
      "Comedy",
      "Drame",
      "Horror",
      "Animation",
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: ((context, index) => GenreCard(genre: genres[index]))),
    );
  }
}
