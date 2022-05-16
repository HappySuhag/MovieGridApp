import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neonflake/movieGridScreen/catagories.dart';
import 'package:neonflake/movieGridScreen/movieApi.dart';

import 'genreCard.dart';
import 'genres.dart';
import 'movieCarousel.dart';
import 'movie_card.dart';
import 'dart:math' as math;

class movieGridBody extends StatelessWidget {
  movieGridBody({Key? key}) : super(key: key);

  var movie = Get.arguments['Data']['data'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Categorylist(),
          Genres(),
          SizedBox(height: 10),
          MovieCarousel(),
          // TextButton(
          //   onPressed: () {
          //     print(movie[7]['image'] == '');
          //   },
          //   child: Text("Test"),
          // ),
        ],
      ),
    );
  }
}
