import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'appPages/appPages.dart';
import 'body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      getPages: appPages,
      initialRoute: Body.routeName,
    );
  }
}
