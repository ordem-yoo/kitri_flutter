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
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "연락처"),
            BottomNavigationBarItem(icon: Icon(Icons.block), label: "차단"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정"),
          ],
        ),
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text("연락처"),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 60,
                    foregroundImage: NetworkImage(
                      "https://picsum.photos/200",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "유민상",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Text(
                  "수강생",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                makeTile(
                  titleText: "프로필 설정 변경",
                  url: "https://picsum.photos/200",
                ),
                makeTile(
                  titleText: "문의하기",
                  colors: Colors.lightBlueAccent,
                  icon: Icons.question_answer,
                ),
                makeTile(
                    titleText: "우리집 위치 선정",
                    colors: Colors.green,
                    icon: Icons.map),
                makeTile(
                    titleText: "구독설정 변경",
                    colors: Colors.pink,
                    icon: Icons.subscriptions),
                makeTile(
                    titleText: "알림 설정",
                    colors: Colors.black,
                    icon: Icons.notifications),
                makeTile(
                  titleText: "로그아웃",
                  colors: Colors.deepOrangeAccent,
                  icon: Icons.logout,
                  subtitleText: Text("기기에서 로그아웃합니다."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

ListTile makeTile({
  required String titleText,
  String? url,
  IconData? icon,
  Text? subtitleText,
  Color? colors,
}) {
  return ListTile(
      leading: CircleAvatar(
        backgroundColor: colors,
        foregroundImage: NetworkImage(url.toString()),
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(titleText),
      subtitle: subtitleText);
}

// subtitleText는 매개변수로는 (String?)로 데이터를 받고있기 때문에 -> "subtitleText는 굳이 안줘도돼 Null로 채울거임"
// 라고 말하는거랑 똑같은데,

// 실제 return하는 ListTile의 subtitle 사용은 
// => "야 subtitleText 이거 무조껀 null아님 데이터있음ㅋㅋ"
// 이라고하는거에요