import 'package:flutter/material.dart';
import 'package:neonflake/movieGridScreen/details/backDropRating.dart';
import 'package:neonflake/movieGridScreen/details/titleDurationAndFabButton.dart';
import 'package:neonflake/movieGridScreen/genreCard.dart';

import 'genres.dart';

class DetailScreenBody extends StatelessWidget {
  var movie;
  DetailScreenBody({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BackDropRating(size: size, movie: movie),
            SizedBox(height: 10),
            TitleDurationAndFabButton(context, movie),
            Genres(movie: movie),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'Plot Summary : ',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                movie['Plot'],
                style: TextStyle(
                  color: Color.fromARGB(255, 116, 118, 123),
                ),
              ),
            ),
            CastAndCrew(
              castList: movie['Actors_list'],
            ),
          ],
        ),
      ],
    );
  }
}

class CastAndCrew extends StatelessWidget {
  final castList;
  const CastAndCrew({Key? key, required this.castList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast and Crew',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: castList.length,
              itemBuilder: (context, index) => CastCard(
                cast: castList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CastCard extends StatelessWidget {
  final cast;
  CastCard({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: Column(
        children: [
          Container(
            height: size.width * 0.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  cast['image'],
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            cast['name'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 3),
          Text(
            'As: ${cast['asCharacter']}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
