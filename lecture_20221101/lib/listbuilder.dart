// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var names = ['유민상', '유아인', '장원영', '울엄마', '송중기'];
    var numbers = [0, 10, 20, 30, 40, 50, 60, 70];
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
        body: ListView.builder(
          // itemCount는 그리고 싶은 위젯을 몇 개 그릴 것인지 정하는 프로퍼티
          itemCount: names.length,
          // itemBuilder는 그리고 싶은 위젯을 무제한으로 그리는 프로퍼티
          itemBuilder: (context, index) {
            return Text(numbers[index].toString());
          },
        ),
      ),
    );
  }
}
