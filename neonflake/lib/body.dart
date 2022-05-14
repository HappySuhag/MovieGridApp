import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neonflake/Login/LoginScreen.dart';
import 'package:neonflake/SignUp/signUpScreen.dart';

import 'background.dart';
import 'componets/button.dart';

class Body extends StatelessWidget {
  static const routeName = '/body';
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BackGround(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Image.asset(
            'assets/Neoneflake_Logo.png',
            width: size.width * 0.7,
          ),
          SizedBox(height: size.height * 0.15),
          Button(
            text: 'LogIn',
            color: Color.fromRGBO(153, 28, 172, 1),
            onPressed: () {
              Get.to(LoginScreen());
              print('LogIn..............');
            },
          ),
          SizedBox(height: 20),
          Button(
            text: 'SignUp',
            color: Color.fromRGBO(241, 212, 247, 1),
            onPressed: () {
              Get.to(SignUpScreen());
              print('SignUp...............');
            },
            textColor: Colors.black,
          )
        ],
      ),
    ));
  }
}
