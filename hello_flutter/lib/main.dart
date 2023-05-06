import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 28),
          ),
        ),
        body: SingleChildScrollView(
          // 화면 상하 스크롤 가능
          child: Padding(
            padding: const EdgeInsets.all(16.0), // 이미지를 패딩으로 감쌈
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network("https://i.ibb.co/nngK6j3/startup.png",
                      width: 81),
                ), // 이미지 추가
                TextField(
                  decoration: InputDecoration(
                    labelText: "이메일",
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "비밀번호",
                  ),
                ),
                Container(
                  width: double.infinity, // 로그인 버튼, 좌우로 (무한대) 크기 확장
                  margin: EdgeInsets.only(top: 24), // 로그인 버튼, 약간 띄우기
                  child: ElevatedButton(
                    onPressed: () {
                      print('로그인 버튼 클릭');
                    },
                    child: Text('로그인'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
