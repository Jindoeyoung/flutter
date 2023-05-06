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
        body: Column(
          children: [
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
            ElevatedButton(
              onPressed: () {
                print('로그인 버튼 클릭');
              },
              child: Text('로그인'),
            )
          ],
        ),
      ),
    );
  }
}
