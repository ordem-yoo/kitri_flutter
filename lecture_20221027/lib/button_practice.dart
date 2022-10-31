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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('굿'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("누르고싶지?"),
                  onPressed: () {
                    print("안녕");
                  },
                ),
                OutlinedButton(
                  onPressed: () {
                    print("pressed OutlineButton");
                  },
                  child: Text('하이'),
                ),
                IconButton(
                  onPressed: () {
                    print("pressed iconButton");
                  },
                  icon: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Hello World!");
                  },
                  child: Text("Hello World"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
