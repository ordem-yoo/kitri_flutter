// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

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
    var myList = ['친구', '친구1', '친구2', '친구3', '친구4', '친구5'];
    print("나 지금 빌드안에 있다.");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("수 출력"),
        ),
        body: Center(
          child: TextButton(
            child: Text(''),
            onPressed: () {
              setState(() {
                setState(() {});
              });
            },
          ),
        ),
      ),
    );
  }
}
