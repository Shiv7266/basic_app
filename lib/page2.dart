import 'package:basic_app/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomContainer(color: Colors.black),
          CustomContainer(color: Colors.blue),
          CustomContainer(color: Colors.red),
          CustomContainer(color: Colors.yellow),
          CustomContainer(color: Colors.green),
        ]),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color color;
  const CustomContainer({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(height: 100, width: 100, color: color),
    );
  }
}
