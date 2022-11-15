// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

// Package
import 'dart:math';
import 'package:flutter/material.dart';

// Page
import 'package:animate_do/animate_do.dart';
import 'constants.dart';

var image = [
  "whyYC",
  "wishYC",
  "heartYC",
  "hahaYC",
  "breakYC",
  "deliYC",
  "jjanYC",
  "kickYC",
  "nopeYC",
  "shyYC"
];
var whishList = [
  "취뽀하고 싶어요",
  "편입 성공 하고 싶어요",
  "돈 많이 벌게 해주세요",
  "로또 당첨되고 싶어요",
  "예뻐지고 싶어요",
  "걱정없이 살게 해주세요",
  "우리가족 건강했으면 좋겠어요",
  "다이어트 성공하고 싶어요",
  "해외여행 가고 싶어요",
  "그마 달게 해주세요",
];
var whisherList = [
  "O***n",
  "0****r",
  "C***g",
  "A*t",
  "m****i",
  "G****7",
  "S*********O",
  "i******r",
  "J*****m",
  "S*****k",
];

class WishViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1526336024174-e58f5cdd8e13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2F0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
              fit: BoxFit.cover),
        ),
        child: PageView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInRight(
                  duration: Duration(milliseconds: 400),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/${randomYC()}.jpg'),
                  ),
                ),
                FadeInRight(
                  duration: Duration(milliseconds: 800),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 80.0),
                    child: Text(
                      whishList[numberStorage(0)],
                      style: wishTitle,
                    ),
                  ),
                ),
                FadeInRight(
                  duration: Duration(milliseconds: 1200),
                  child: Text(
                    whisherList[numberStorage(1)],
                    style: wishTitle,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// 사진 랜덤으로 나오게 하기
String randomYC() {
  Random n = Random();
  int random = n.nextInt(9);
  return image[random];
}

// 숫자 랜덤 생성기
int numberStorage(int n) {
  List<int> storage = [];
  for (int r = 0; r < 2; r++) {
    var number = Random();
    int random = number.nextInt(10);
    storage.add(random);
  }
  return storage[n];
}
