import 'package:basic_app/Auth/auth_layout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: 'Signup',
      onTap: () async {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: 'user@mail.com', password: '12345678')
            .catchError((e) => print(e));

        print(userCredential.user!.uid);
      },
    );
  }
}
