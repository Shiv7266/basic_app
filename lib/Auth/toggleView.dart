import 'package:basic_app/Auth/login.dart';
import 'package:basic_app/Auth/signup.dart';
import 'package:flutter/material.dart';

class ToggleView extends StatefulWidget {
  const ToggleView({Key? key}) : super(key: key);

  @override
  State<ToggleView> createState() => _ToggleViewState();
}

class _ToggleViewState extends State<ToggleView> {
  bool signIncreen = false;
  void toggle() {
    setState(() {
      signIncreen = !signIncreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return signIncreen ? Login() : SignUp();
  }
}
