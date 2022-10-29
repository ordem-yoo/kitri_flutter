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
    var myName = '유민상';
    var sok = 'mjc';
    var age = 27;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("$age 정보 앱"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '안녕하세요! 반가워요, 저는 유민상입니다.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('내 이름 : $myName'),
              Text('내 소속 : $sok'),
              Text('내 만 나이 : ${age - 1}'),
            ],
          ),
        ),
      ),
    );
  }
}
