import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          child: ElevatedButton(
            child: Text("누르고 싶지?"),
            onPressed: () {
              Fluttertoast.showToast(
                msg: '우왕',
                fontSize: 20.0,
              );
            },
          ),
        ),
      ),
    );
  }
}
