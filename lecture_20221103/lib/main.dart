// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_local_variable, prefer_if_null_operators

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Future sleep3Seconds = Future.delayed(Duration(seconds: 3));
    Future sleep5Seconds = Future.delayed(Duration(seconds: 5));
    Future sleep7Seconds = Future.delayed(Duration(seconds: 7));

    Future<String> sleep3SercondsAndGetHello = Future.delayed(
      Duration(seconds: 3),
      () {
        return "Hello";
      },
    );

    Future<String?> sleep3SecondsAndGetHelloOrNull = Future.delayed(
      Duration(seconds: 5),
      () {
        return null;
      },
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
          child: FutureBuilder(
            future: sleep3SecondsAndGetHelloOrNull,
            builder: (context, snapshot) {
              print(snapshot.connectionState);
              //  String? myData = snapshot.data; // flutter 버전 문제로 아래 코드로 변경
              String? myData = snapshot.data as String?;
              return snapshot.connectionState == ConnectionState.done
                  ? myData == null // myData가 null이라면
                      ? Text('null입니다.') // Text위젯으로 'null입니다.'
                      : Text(myData) // 아니면 myData를 문자열로 출력
                  : Text('로딩중...'); //  myData가 null이 아니면
            },
          ),
        ),
      ),
    );
  }
}
