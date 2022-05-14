import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:neonflake/componets/button.dart';

import '../componets/kTextFormField.dart';
import 'loginScreenBackground.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/loginScreen';
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  var _email, err, _password;
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
                    'LOGIN',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  SvgPicture.asset(
                    'assets/login.svg',
                    height: size.height * 0.35,
                  ),
                  SizedBox(height: 40),
                  kTextFormField(
                    hintText: 'Enter your email',
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
                          return "Enter a valid email address";
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
                    onFieldSubmitted: (s) => _login(),
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
                    text: "Login",
                    color: Color(0xFF43054E),
                    onPressed: () {
                      _login();
                    },
                  )
                ],
              )
            ],
          )),
    );
  }

  void _login() {
    var state = _formKey.currentState;
    if (state!.validate() == null) return;
    if (state.validate()) {
      print('Write Login API here');
    }
  }
}
