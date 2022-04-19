import 'package:basic_app/Auth/auth_layout.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Login',
      onTap: () {},
    );
  }
}
