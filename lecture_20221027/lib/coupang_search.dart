import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "최근검색어",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Chip(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black26),
                      label: Text("부리타정수기"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Chip(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black26),
                      label: Text("브리타정수기"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Chip(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black26),
                      label: Text("부리타정수기 필터 한국형"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Chip(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black26),
                      label: Text("부리타정수기"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "🚀  당일배송 새벽배송되는 로켓프레시 상품",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Chip(
                      padding: EdgeInsets.all(8),
                      label: Text("부리타정수기"),
                      labelStyle: TextStyle(color: Colors.green),
                      backgroundColor: Colors.green.withOpacity(0.1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Chip(
                      padding: EdgeInsets.all(8),
                      label: Text("부리타정수기"),
                      labelStyle: TextStyle(color: Colors.green),
                      backgroundColor: Colors.green.withOpacity(0.1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Chip(
                      padding: EdgeInsets.all(8),
                      label: Text("부리타정수기"),
                      labelStyle: TextStyle(color: Colors.green),
                      backgroundColor: Colors.green.withOpacity(0.1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Chip(
                      padding: EdgeInsets.all(8),
                      label: Text("부리타정수기"),
                      labelStyle: TextStyle(color: Colors.green),
                      backgroundColor: Colors.green.withOpacity(0.1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "쿠팡 추천 검색어",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Chip(
                    label: Text("부리타정수기"),
                    labelStyle: TextStyle(color: Colors.green),
                    backgroundColor: Colors.green.withOpacity(0.1),
                  ),
                  Chip(
                    label: Text("부리타정수기"),
                    labelStyle: TextStyle(color: Colors.green),
                    backgroundColor: Colors.green.withOpacity(0.1),
                  ),
                  Chip(
                    label: Text("부리타정수기"),
                    labelStyle: TextStyle(color: Colors.green),
                    backgroundColor: Colors.green.withOpacity(0.1),
                  ),
                  Chip(
                    label: Text("부리타정수기"),
                    labelStyle: TextStyle(color: Colors.green),
                    backgroundColor: Colors.green.withOpacity(0.1),
                  ),
                  Chip(
                    label: Text("부리타정수기"),
                    labelStyle: TextStyle(color: Colors.green),
                    backgroundColor: Colors.green.withOpacity(0.1),
                  ),
                  Chip(
                    label: Text("부리타정수기"),
                    labelStyle: TextStyle(color: Colors.green),
                    backgroundColor: Colors.green.withOpacity(0.1),
                  ),
                  Chip(
                    label: Text("부리타정수기"),
                    labelStyle: TextStyle(color: Colors.green),
                    backgroundColor: Colors.green.withOpacity(0.1),
                  ),
                  Chip(
                    label: Text("부리타정수기"),
                    labelStyle: TextStyle(color: Colors.green),
                    backgroundColor: Colors.green.withOpacity(0.1),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
