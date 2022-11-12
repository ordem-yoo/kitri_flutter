// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isLoading = true;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          sleep3SercondsAndGetHello;
        }),
        body: Center(
          child: isLoading ? CircularProgressIndicator() : Text('안녕'),
        ),
      ),
    );
  }
}

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
