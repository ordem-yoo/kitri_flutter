// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var names = ['유민상', '유아인', '장원영', '울엄마', '송중기'];

    // names[names.length -1]
    // names.last
    // .last 마지막만 가져옴
    // .fisrt 첫번째만 가져옴
    // .length 길이를 가져옴

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("연락처 앱"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("당신의 연락처는 ${names.length}명이 있습니다."),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.call),
              title: Text(names.first),
              subtitle: Text("010-6228-5198"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.call),
              title: Text(names[1]),
              subtitle: Text("010-1234-5555"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.call),
              title: Text(names[2]),
              subtitle: Text("010-2222-2222"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.call),
              title: Text(names[3]),
              subtitle: Text("010-1111-1111"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.call),
              title: Text(names[4]),
              subtitle: Text("010-1234-1234"),
            ),
          ],
        ),
      ),
    );
  }
}
