// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class YCGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var galleryImage = [
      "breakYC",
      "brokenYC",
      "byeYC",
      "deliYC",
      "dizzyYC",
      "hahaYC",
      "happyYC",
      "heartYC",
      "hearYC",
      "jjanYC",
      "kickYC",
      "nopeYC",
      "princessYC",
      "quietYC",
      "sadYC",
      "shyYC",
      "trashYC",
      "uncomfortableYC",
      "vYC",
      "whyYC",
      "wishYC",
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1478098711619-5ab0b478d6e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
              fit: BoxFit.fill),
        ),
        child: GridView.builder(
          itemCount: 21, //item 개수
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
            childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
            mainAxisSpacing: 10, //수평 Padding
            crossAxisSpacing: 10, //수직 Padding
          ),
          itemBuilder: (context, index) {
            return Image.asset("images/${galleryImage[index]}.jpg");
          },
        ),
      ),
    );
  }
}
