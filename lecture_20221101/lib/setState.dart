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
  var myLevel = 0;

  Widget build(BuildContext context) {
    // var myLevel = 0;
    print("나 지금 빌드안에 있다.");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(myLevel);
            setState(() {
              myLevel++;
            });
            print(myLevel);
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("수 출력"),
        ),
        body: Center(
          child: TextButton(
            child: Text(
              "안녕 $myLevel",
              style: TextStyle(fontSize: 30),
            ),
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
