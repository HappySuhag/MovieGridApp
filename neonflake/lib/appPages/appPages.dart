import 'package:get/get.dart';
import 'package:neonflake/Login/LoginScreen.dart';
import 'package:neonflake/SignUp/signUpScreen.dart';

import '../body.dart';

var appPages = [
  GetPage(name: Body.routeName, page: () => Body()),
  GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
  GetPage(name: SignUpScreen.routeName, page: () => SignUpScreen()),
];
