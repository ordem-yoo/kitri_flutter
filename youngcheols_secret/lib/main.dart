// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

// 앱 이름  소원듣는 영철이
// 메인 캐릭터 이미지 영철
// 배경색 보라섹

// Packages
import 'package:flutter/material.dart';

// Page
import 'constants.dart';
import 'make_wish_page.dart';
import 'wish_view.dart';
import 'yc_gallery.dart';

void main() {
  runApp(Spalsh());
}

class Spalsh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'MyFontNeo',
        listTileTheme: ListTileThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          tileColor: Colors.white,
          textColor: Colors.deepPurple.shade300,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = ["소원 보기", "소원 빌기", "영철 갤러리"];
    var subtitle = ["오늘의 소원을 확인하세요", "소원을 빌어볼까요?", "귀여운 영철이의 갤러리입니다."];
    var image = ["whyYC", "wishYC", "heartYC"];
    List<Object> pageList = [WishViewPage(), MakeWishPage(), YCGallery()];

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "622,519개의 소원을 알고 있는",
                style: mainTitle,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "소원듣는 영철이",
                  style: subTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/hearYC.jpg'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          title[index],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          subtitle[index],
                        ),
                        trailing: Image.asset('images/${image[index]}.jpg'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    pageList[index] as Widget),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
