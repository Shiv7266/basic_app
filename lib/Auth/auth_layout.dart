import 'package:basic_app/Auth/toggleView.dart';
import 'package:basic_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthLayout extends StatefulWidget {
  final String title;
  final Function onTap;
  const AuthLayout({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  State<AuthLayout> createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> {
  TextEditingController uName = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.pink.shade100, Colors.indigo.shade300],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            children: [
              v40,
              TitleTextWidget(widget: widget),
              v30,
              CustomTextField(
                controller: uName,
                hintText: 'Username',
                prefixIcon: Icons.account_circle,
              ),
              v30,
              CustomTextField(
                controller: pass,
                hintText: 'Password',
                prefixIcon: Icons.wifi_protected_setup,
              ),
              v30,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: InkWell(
                  onTap: widget.onTap as Function(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(30)),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                          child: Text(
                        widget.title,
                        style: TextStyle(color: kcWhite, fontSize: 22),
                      )),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('Forgot your password?',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text('Don\'t have an account? SignUp',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final AuthLayout widget;

  @override
  Widget build(BuildContext context) {
    return Text(widget.title,
        style: GoogleFonts.roboto(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white));
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
