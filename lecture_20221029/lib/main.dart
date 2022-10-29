// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mainColor = Colors.deepPurple;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("민상 TV"),
          backgroundColor: mainColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset('images/image1.png'),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: mainColor,
          items: [
            BottomNavigationBarItem(
              label: "홈",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "좋아요",
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: "프로필",
              icon: Icon(Icons.person),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple.shade300,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: ListView(
          children: [
            makeTile(0, 0, 0),
            makeTile(1, 1, 1),
            makeTile(2, 0, 2),
            makeTile(0, 1, 0),
            makeTile(1, 0, 1),
            makeTile(2, 1, 2),
            makeTile(0, 0, 0),
            makeTile(1, 1, 1),
            makeTile(2, 0, 2),
            makeTile(0, 1, 2),
            makeTile(1, 0, 1),
            makeTile(2, 1, 2),
          ],
        ),
      ),
    );
  }
}

ListTile makeTile(int i, int j, int k) {
  List<String> platform = [
    '민상 TV',
    'ordem TV',
    'minsang TV',
  ];

  List<String> name = [
    '유민상',
    'ordem',
    'minsang',
  ];

  List<String> image = ['images/image1.png', 'images/image2.png'];
  var titleTextSize = 15.0;
  return ListTile(
    title: Text(
      "${platform[k]} 제공 | 작성 : ${name[i]}",
      style: TextStyle(
        fontSize: titleTextSize,
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Text("Flutter 강의 재미있어 인기 폭발"),
    trailing: Image.asset(image[j]),
  );
}
