import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          child: Icon(Icons.edit),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
          ],
        ),
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.deepPurple,
          elevation: 0.0,
          title: Text("민상 TV"),
          actions: const [
            Icon(Icons.settings),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                foregroundImage: NetworkImage("https://picsum.photos/100"),
              ),
            ),
          ],
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "민상 TV 제공",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "(단독) Flutter 강의 종강까지 흥행 예정...",
                  style: TextStyle(fontSize: 32),
                ),
                trailing: CircleAvatar(
                  foregroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
