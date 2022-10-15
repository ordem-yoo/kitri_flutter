// start project link - https://flutter-ko.dev/docs/get-started/codelab
// color hex code link - https://m.blog.naver.com/hellonami/30189427178

import 'package:flutter/material.dart';

void main() => runApp(AppbarLess());

// 기본 화면 만들기
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color(0xFFFA8072),
        appBar: AppBar(
          title: Text(
            'Hello World!',
          ),
          backgroundColor: Color(0xFF9932CC),
        ),
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

// String과 int 이해하기
class AppbarLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Text('01234567'),
        ), // Text 위젯의 data type은 String
      ),
    );
  }
}
