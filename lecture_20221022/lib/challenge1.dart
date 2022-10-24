import 'package:flutter/material.dart';

void main() {
  runApp(BnbChallenge());
}

// FloatingACtionButton small size (mini)
class BnbChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          mini: true,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "연락처"),
          BottomNavigationBarItem(icon: Icon(Icons.block), label: "차단"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정")
        ]),
        body: Container(),
      ),
    );
  }
}
