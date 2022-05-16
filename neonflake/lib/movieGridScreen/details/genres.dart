import 'package:flutter/material.dart';

import '../genreCard.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie['genres'].split(',').length,
          itemBuilder: ((context, index) =>
              GenreCard(genre: movie['genres'].split(',')[index])),
        ),
      ),
    );
  }
}
