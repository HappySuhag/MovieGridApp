import 'package:flutter/material.dart';

class LoginScreenBackground extends StatelessWidget {
  final Widget child;
  LoginScreenBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/main_top.png'),
              width: size.width * 0.35,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/login_bottom.png'),
              width: size.width * 0.5,
            ),
            child
          ],
        ),
      ),
    );
  }
}
