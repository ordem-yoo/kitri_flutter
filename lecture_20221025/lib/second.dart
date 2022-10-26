import 'package:flutter/material.dart';

void main() {
  runApp(SecondTime());
}

class SecondTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.purple,
          elevation: 0.0,
          title: Text("오늘은 화요일..."),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
