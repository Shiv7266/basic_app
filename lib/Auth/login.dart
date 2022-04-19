import 'package:basic_app/Auth/auth_layout.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      onTap: () async {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: 'user@mail.com', password: '12345678')
            .catchError((e) => print(e));

        print(userCredential.user!.uid);
        print('successfully signed in');
      },
    );
  }
}
