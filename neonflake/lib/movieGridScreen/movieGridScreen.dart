import 'package:flutter/material.dart';
import 'package:neonflake/movieGridScreen/movieGridBody.dart';

class MovieGridScreen extends StatelessWidget {
  static const routeName = '/movieGridScreen';
  const MovieGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: movieGridBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 207, 130, 221),
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.black,
        ),
      ],
    );
  }
}
