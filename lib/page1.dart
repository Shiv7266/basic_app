import 'package:basic_app/customText.dart';
import 'package:basic_app/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.multitrack_audio_rounded,
              color: Colors.black,
            )
          ],
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'AppBar',
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: Scrollbar(
          isAlwaysShown: true,
          thickness: 8.0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/abc.jpg',
                  height: 200,
                ),
                Container(
                  child: Center(
                      child: CustomText(
                    data: 'Nature',
                    fontsize: 30,
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.black,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, CupertinoPageRoute(builder: (_) => Page2()));
                    },
                    child: Text('Go to Next Page')),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
