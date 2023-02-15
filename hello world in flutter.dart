import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  //APP을 위젯에 할당
  @override // 부모생성자로 부터 불러옴
  Widget build(BuildContext context) {
    return MaterialApp(
      // 구글 스타일 앱
      home: Scaffold(
        // 위젯 구조생성
        appBar: AppBar(
          // 상단앱바
          title: Text("Hello flutter!"),
        ),
        body: Center(
          //몸통 중앙
          child: Text("hello world"),
        ),
      ),
    );
  }
}
