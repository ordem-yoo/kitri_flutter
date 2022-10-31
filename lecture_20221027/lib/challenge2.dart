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
        appBar: AppBar(
          title: Text("그 시절 우리가 좋아했던 소녀 결제"),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Image(
                image: AssetImage('images/image2.jpg'),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fcfile%2F156490354E4206C823'),
                ),
                title: Text("구파도 감독"),
                subtitle: Text("그시절 우리가 좋아했던 소녀, 아래층 사람들"),
                trailing: Chip(
                  backgroundColor: Colors.green.shade100,
                  label: Text(
                    "영화감독",
                    style: TextStyle(color: Colors.green.shade800),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          blurStyle: BlurStyle.outer),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '영원히 내 눈 속의 사과 같은 너..',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '그 때 너도 날 좋아했을까?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "이제 막 17살이 된 나, 커징텅(가진동)은 시도 때도 없이 서 있는 ‘발기’ 쉬보춘과 어떤 이야기건 꼭 등장하는 ‘뚱보’ 아허, 세상에서 자신이 가장 잘 생겼다고 생각하는 ‘머저리’ 라오차오, 재미 없는 유머로 여자들을 꼬시려는 ‘사타구니’ 랴오잉홍이라는 친구들이 있다. 고등학교에서도 같은 반이 된 친구들과의 유일한 공통점은 최고의 모범생 션자이(진연희)를 좋아한다는 것! 어느 날, 커징텅은 여느 때처럼 교실에서 사고를 친 덕분에 션자이에게 특별 감시를 받게 되고 이를 계기로 모범생과 문제아 사이 백 만년만큼의 거리가 점점 좁혀지는 듯 했다. 하지만 마음과 달리 잘해보려는 일도 자꾸만 어긋나고, 커징텅과는 달리 친구들은 션자이의 사랑을 얻기 위해 아낌없이 표현하고 경쟁한다. 게다가 애써 한 고백에 션자이는 대답하지 않는다. 그리고 15년 후 다시 만난 션자이는…"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 3.0),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("지금 바로 결제하기"),
                        Text("지금 결제하여 10% 할인받으세요."),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("결제하기"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
