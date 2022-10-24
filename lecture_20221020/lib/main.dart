import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.person),
            title: Text("내 연락처"),
            elevation: 0.0,
          ),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("나의 연락처 : 274,490명이 저장됨"),
              ),
              makelistTile(name: "유민상", phoneNumber: "010-6228-5198"),
              makelistTile(name: "영철이", phoneNumber: "010-1234-5678"),
              makelistTile(name: "춘배", phoneNumber: "010-1357-2468"),
              makelistTile(name: "나비", phoneNumber: "010-1005-4685"),
              makelistTile(name: "딱복이", phoneNumber: "010-1111-0000"),
              makelistTile(name: "늬에시", phoneNumber: "010-2525-2525"),
              makelistTile(name: "유민상", phoneNumber: "010-6228-5198"),
              makelistTile(name: "영철이", phoneNumber: "010-1234-5678"),
              makelistTile(name: "춘배", phoneNumber: "010-1357-2468"),
              makelistTile(name: "나비", phoneNumber: "010-1005-4685"),
              makelistTile(name: "딱복이", phoneNumber: "010-1111-0000"),
              makelistTile(name: "늬에시", phoneNumber: "010-2525-2525"),
              makelistTile(name: "유민상", phoneNumber: "010-6228-5198"),
              makelistTile(name: "영철이", phoneNumber: "010-1234-5678"),
              makelistTile(name: "춘배", phoneNumber: "010-1357-2468"),
              makelistTile(name: "나비", phoneNumber: "010-1005-4685"),
              makelistTile(name: "딱복이", phoneNumber: "010-1111-0000"),
              makelistTile(name: "늬에시", phoneNumber: "010-2525-2525"),
            ],
          )),
    );
  }
}

ListTile makelistTile({required String name, required String phoneNumber}) {
  return ListTile(
    title: Text(name),
    subtitle: Text(phoneNumber),
    leading: Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(Icons.person),
    ),
    trailing: Icon(Icons.call),
  );
}
