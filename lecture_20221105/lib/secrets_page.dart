// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SecretsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imgUrl =
        'https://images.unsplash.com/photo-1667401766529-5560b1e38d66?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80';
    // var images = [
    //   'assets/images/character.png',
    //   'assets/images/character2.png',
    //   'assets/images/character3.png'
    // ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('뒤로가기'),
        centerTitle: false,
        // automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FutureBuilder(
            future: fetchSecrets(),
            builder: (context, snapshot) {
              return snapshot.connectionState == ConnectionState.done
                  ? PageView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeInRight(
                              delay: Duration(milliseconds: 500),
                              child: Image.asset('images/character.jpg'),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            FadeInRight(
                              delay: Duration(milliseconds: 700),
                              child: Text(
                                snapshot.data![index].secret,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            FadeInRight(
                              delay: Duration(milliseconds: 500),
                              child: Text(
                                snapshot.data![index].author.name,
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        );
                      },
                    )
                  : CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
