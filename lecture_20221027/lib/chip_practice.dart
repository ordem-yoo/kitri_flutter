import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 4,
            runSpacing: -8,
            children: [
              Chip(
                backgroundColor: Colors.green.shade200,
                avatar: CircleAvatar(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: Text('유'),
                ),
                label: Text("유민상"),
              ),
              Chip(
                backgroundColor: Colors.blue.shade200,
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  child: Text('유'),
                ),
                label: Text("유민상"),
              ),
              Chip(
                backgroundColor: Colors.orange.shade200,
                avatar: CircleAvatar(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  child: Text('유'),
                ),
                label: Text("유민상"),
              ),
              Chip(
                backgroundColor: Colors.pink.shade200,
                avatar: CircleAvatar(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  child: Text('유'),
                ),
                label: Text("유민상"),
              ),
              Chip(
                backgroundColor: Colors.red.shade200,
                avatar: CircleAvatar(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Text('유'),
                ),
                label: Text("유민상"),
              ),
              Chip(
                backgroundColor: Colors.purple.shade200,
                avatar: CircleAvatar(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  child: Text('유'),
                ),
                label: Text("유민상"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
