import 'package:get/get.dart';
import 'package:neonflake/Login/LoginScreen.dart';
import 'package:neonflake/SignUp/signUpScreen.dart';
import 'package:neonflake/movieGridScreen/details/detail_screen.dart';
import 'package:neonflake/movieGridScreen/details/trailerVideo.dart';
import 'package:neonflake/movieGridScreen/movieGridScreen.dart';

import '../body.dart';

var appPages = [
  GetPage(name: Body.routeName, page: () => Body()),
  GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
  GetPage(name: SignUpScreen.routeName, page: () => SignUpScreen()),
  GetPage(name: MovieGridScreen.routeName, page: () => MovieGridScreen()),
  GetPage(name: DetailScreen.routeName, page: () => DetailScreen()),
  GetPage(name: TrailerVideo.routeName, page: () => TrailerVideo()),
];
