import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neonflake/movieGridScreen/details/detail_screen.dart';

class MovieCard extends StatelessWidget {
  var movie;
  MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.0001),
      child: InkWell(
        onTap: () {
          Get.to(DetailScreen(movie: movie));
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                // color: Colors.blueAccent,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black26,
                    )
                  ],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: movie['image'] == ''
                        ? NetworkImage(movie['thumbnail'].toString())
                        : NetworkImage(movie['image'].toString()),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: movie['image'] == ''
                  ? Text('Ad')
                  : Text(
                      movie['title'],
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                movie['image'] == ''
                    ? Text('')
                    : Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 240, 224, 83),
                      ),
                Text(
                  movie['Ratings']['imDb'],
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
