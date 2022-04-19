import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  final String name;

  const Page3({Key? key, required this.name}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                controller: userNameController,
                decoration: InputDecoration(
                    hintText: 'Username',
                    labelText: 'Username',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.black))),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: 'Password', labelText: 'Password'),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(userNameController.text.toString());
                    print(passwordController.text.toString());
                  },
                  child: Text('Get data'))
            ],
          ),
        ),
      ),
    );
  }
}
