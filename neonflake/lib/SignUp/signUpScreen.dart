import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:neonflake/Login/loginScreen.dart';

import '../Login/loginScreenBackground.dart';
import '../componets/button.dart';
import '../componets/kTextFormField.dart';
import '../movieGridScreen/MovieGridScreen.dart';
import '../movieGridScreen/movieApi.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signupScreen';
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  var _firstName, _lastName, _email, _password;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LoginScreenBackground(
      child: Form(
          key: _formKey,
          child: ListView(
            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SignUp',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  SvgPicture.asset(
                    'assets/login.svg',
                    height: size.height * 0.35,
                  ),
                  SizedBox(height: 40),
                  kTextFormField(
                    hintText: 'First Name',
                    icon: Icons.person,
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (s) => Get.focusScope!.nextFocus(),
                    onChanged: (s) {
                      _firstName = s;
                    },
                    validator: (s) {
                      if (s == null || s.trim().isEmpty) {
                        return '*required';
                      }
                    },
                  ),
                  SizedBox(height: 10),
                  kTextFormField(
                    hintText: 'Last Name',
                    icon: Icons.person,
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (s) => Get.focusScope!.nextFocus(),
                    onChanged: (s) {
                      _lastName = s;
                    },
                    validator: (s) {
                      if (s == null || s.trim().isEmpty) {
                        return '*required';
                      }
                    },
                  ),
                  SizedBox(height: 10),
                  kTextFormField(
                    hintText: 'Enter your  email',
                    icon: Icons.person,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (s) => Get.focusScope!.nextFocus(),
                    onChanged: (s) {
                      _email = s;
                    },
                    validator: (s) {
                      if (s == null || s.trim().isEmpty) {
                        return '*required';
                      } else {
                        if (!GetUtils.isEmail(s)) {
                          return 'Enter a valid email';
                        }
                      }
                    },
                  ),
                  SizedBox(height: 10),
                  kTextFormField(
                    hintText: "Enter your password",
                    validator: (s) {
                      if (s == null || s.trim().isEmpty) {
                        return '*required';
                      }
                    },
                    icon: Icons.password,
                    obscureText: _obscureText,
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (s) => _signUp(),
                    onChanged: (s) {
                      _password = s;
                    },
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Button(
                    text: "SignUp",
                    color: Color(0xFF43054E),
                    onPressed: () {
                      _signUp();
                    },
                  )
                ],
              )
            ],
          )),
    );
  }

  Future<void> _signUp() async {
    var state = _formKey.currentState;
    if (state!.validate() == null) return;
    if (state.validate()) {
      print('Write SignUp API here');
      var Data = await getMovieDetails();
      Get.to(MovieGridScreen(), arguments: {"Data": Data});
    }
  }
}
