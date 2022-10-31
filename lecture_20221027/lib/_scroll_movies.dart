import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Container(
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: Image.asset('images/image1.jpg'),
                ),
                Container(
                  child: Image.asset('images/image2.jpg'),
                ),
                Container(
                  child: Image.asset('images/image3.jpg'),
                ),
              ],
            ),
          )),
    );
  }
}
