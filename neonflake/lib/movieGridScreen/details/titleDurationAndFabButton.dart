import 'package:flutter/material.dart';

Padding TitleDurationAndFabButton(BuildContext context, dynamic movie) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie['title'],
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    movie['year'].toString(),
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    movie['RuntimeStr'].toString(),
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 64,
          width: 64,
          child: FlatButton(
            color: Color.fromARGB(255, 219, 100, 91),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
