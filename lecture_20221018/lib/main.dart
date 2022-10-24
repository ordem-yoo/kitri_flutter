// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text("My Profile App"),
        ),
        body: SafeArea(
            child: Column(
          // 기본값 -> 개발자, 사용자가 설정해주지 않으면 기본으로 채택해서 사용할 값
          // 위젯에 마우스를 올리면 해당 위젯의 기본 값을 볼 수 있다.
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello World!"),
            Image.network(
                "https://mblogthumb-phinf.pstatic.net/MjAyMDA1MDZfNDgg/MDAxNTg4NzI3NzIxMzgy.DFy5ubKNUC9bBTXfGVLFUo8CAzoF9d0rmR2h9sl6FeAg.iytGl7hUnWTRBdrWHar8iq13FqlMi24FjDkch4jJNtsg.PNG.yesohyesyes/SE-3f96bc7d-264e-4b39-9727-045c98296575.png?type=w800"),
            Text("My name is minsang!"),
            Text("I learning Flutter"),
          ],
        )),
      ),
    );
  }
}

// 플러터 폴더구조
// lib 폴더
// library 폴더라고 부르고 lib라고 줄여서 표기하는 것이 관례
// 기본으로 main.dart를 포함하고 있음

// pubspec.yaml
// 앱을 만들 때 필요한 패키지나 이미지, 폰트등을 등록하는 파일
// 패키지 : 어떤 사람이 먼저 만들어 놓은 코드 꾸러미
