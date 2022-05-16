import 'package:flutter/material.dart';
import 'package:neonflake/movieGridScreen/details/detail_screen_body.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detailScreen';
  var movie;
  DetailScreen({Key? key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailScreenBody(
        movie: movie,
      ),
    );
  }
}
