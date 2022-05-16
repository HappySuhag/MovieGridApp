import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 0.85,
      initialPage: initialPage,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var movies = Get.arguments['Data']['data'];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: ((context, index) => buildMoviesSlider(movies, index)),
        ),
      ),
    );
  }

  Widget buildMoviesSlider(movies, int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - (_pageController.page)!.toDouble();
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: Duration(microseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
                angle: math.pi * value, child: MovieCard(movie: movies[index])),
          );
        },
      );
}
