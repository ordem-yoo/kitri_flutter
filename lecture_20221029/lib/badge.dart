import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("animate_do 실습하기"),
        ),
        body: Center(
          child: Stack(
            children: [
              Badge(
                badgeContent: Text(
                  "3",
                  style: TextStyle(color: Colors.white),
                ),
                child: FadeInLeftBig(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
              Badge(
                badgeContent: Text(
                  "3",
                  style: TextStyle(color: Colors.white),
                ),
                child: FadeInRightBig(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
              Badge(
                badgeContent: Text(
                  "3",
                  style: TextStyle(color: Colors.white),
                ),
                child: FadeInUpBig(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
              Badge(
                badgeContent: Text(
                  "3",
                  style: TextStyle(color: Colors.white),
                ),
                child: FadeInDownBig(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
