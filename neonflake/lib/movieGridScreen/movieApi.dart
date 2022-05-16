import 'dart:convert';

import 'package:http/http.dart' as http;

Future getMovieDetails() async {
  var url = Uri.https(
    'api-telly-tell.herokuapp.com',
    '/movies/rahul.verma',
  );

  var response = await http.get(url);

  if (response.statusCode == 200) {
    return (jsonDecode(response.body));
  }
}
