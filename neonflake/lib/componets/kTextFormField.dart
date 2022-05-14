import 'package:flutter/material.dart';
import 'package:get/get.dart';

class kTextFormField extends StatelessWidget {
  String hintText;
  TextInputType? keyboardType;
  void Function(String)? onChanged;
  String? Function(String?)? validator;
  IconData? icon;
  bool obscureText;
  Widget? suffixIcon;
  void Function(String)? onFieldSubmitted;

  kTextFormField({
    Key? key,
    required this.icon,
    required this.hintText,
    this.keyboardType,
    required this.onChanged,
    required this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black,
          ),
          hintText: hintText,
          // errorText: _err,
          border: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: child,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 170, 246, 1),
        borderRadius: BorderRadius.circular(29),
      ),
    );
  }
}
