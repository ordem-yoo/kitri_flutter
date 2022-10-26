import 'package:flutter/material.dart';

void main() {
  runApp(Challenge());
}

class Challenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text("스나이퍼팩토리앱"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.laptop), label: "강의"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "즐겨찾기"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "검색"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "커뮤니티"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "나의 정보")
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200/200"),
              ),
              title: Text(
                "Minsang Yoo",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "SniperFactory Student",
              ),
              trailing: Icon(
                Icons.search,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "수업인증",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 170,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        'https://picsum.photos/300/300',
                        fit: BoxFit.cover,
                      ),
                      clipBehavior: Clip.antiAlias,
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Image.network(
                        'https://picsum.photos/400/400',
                        fit: BoxFit.cover,
                      ),
                      clipBehavior: Clip.antiAlias,
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        'https://picsum.photos/500/500',
                        fit: BoxFit.cover,
                      ),
                      clipBehavior: Clip.antiAlias,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "설정찾기",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade800,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.sunny),
                      title: Text(
                        "테마변경",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text(
                        "즐겨찾는 과정",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.calendar_month),
                      title: Text(
                        "과정 일정 관리",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        "홈화면 설정",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade800,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.subscriptions,
                        color: Colors.red,
                      ),
                      title: Text(
                        "결제관리",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.shopping_bag,
                        color: Colors.purple,
                      ),
                      title: Text(
                        "장바구니",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.history_edu,
                        color: Colors.green,
                      ),
                      title: Text(
                        "결제이력",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
