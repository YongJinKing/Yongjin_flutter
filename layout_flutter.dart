import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, YongJin',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28, //폰트사이즈
                          fontWeight: FontWeight.w800, //폰트 두께
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '\$5 194 482', //특수문자 앞에 이스케이프문
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.8), //투명도 설정
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    //버튼 만들때 사용
                    decoration: BoxDecoration(
                      //박스 꾸미기
                      color: Colors.amber, //색깔 삽입
                      borderRadius: BorderRadius.circular(45), //라운드
                    ),
                    child: Padding(
                      //띄어쓰기
                      padding: EdgeInsets.symmetric(
                        vertical: 15, //가로줄 2개 위아래
                        horizontal: 40, //새로줄 2개 좌우
                      ),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
