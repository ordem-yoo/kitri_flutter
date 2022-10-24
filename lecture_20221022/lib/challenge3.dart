import 'package:flutter/material.dart';

void main() {
  runApp(BnbChallenge());
}

// Decorate FloatingActionButton
class BnbChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: 150,
          height: 50,
          child: FloatingActionButton(
            backgroundColor: Colors.pink,
            child: Text("지금 바로 예약하기"),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "연락처"),
          BottomNavigationBarItem(icon: Icon(Icons.block), label: "차단"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정")
        ]),
        body: Container(),
      ),
    );
  }
}
