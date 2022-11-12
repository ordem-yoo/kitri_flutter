// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

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
    Future sleep3Second = Future.delayed(Duration(seconds: 3));
    Future sleep5Second = Future.delayed(Duration(seconds: 5));
    Future sleep7Second = Future.delayed(Duration(seconds: 7));

    Future<String> sleep3SercondsAndGetHello =
        Future.delayed(Duration(seconds: 3), () {
      return "Hello";
    });

    Future<String?> sleep3SecondsAndGetHelloOrNull =
        Future.delayed(Duration(seconds: 5), () {
      return null;
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Center(
          child: FutureBuilder(
            future: sleep3SercondsAndGetHello,
            builder: (context, snapshot) {
              return snapshot.connectionState ==
                      ConnectionState.done // 현재 상태가 종료된 상태라면 ( ==의 뜻이 비교해서 맞으면)
                  ? Text(
                      '끝 !', // True면, Text('끝 ! ') 보여주기
                      style: TextStyle(fontSize: 30),
                    )
                  : CircularProgressIndicator(); // false면, 로딩위젯 보여주기
            },
          ),
        ),
      ),
    );
  }
}
