import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  final String genre;
  GenreCard({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: size.width * 0.07),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 16,
        ),
      ),
    );
  }
}
