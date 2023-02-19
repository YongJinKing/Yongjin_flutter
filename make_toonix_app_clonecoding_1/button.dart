import 'package:flutter/material.dart';

//반복적인 작업을 할때 만드는 클래스
class Button extends StatelessWidget {
  //클래스 생성
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    //생성자 생성
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //박스생성
      decoration: BoxDecoration(
        //뒷배경 꾸미기
        color: bgColor, //뒷배경값 받아오기
        borderRadius: BorderRadius.circular(45), //둥글게
      ),
      child: Padding(
        //간격벌리기
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 40,
        ),
        child: Text(
          text, //내가 사용할 글 쓰기
          style: TextStyle(
            //글색깔
            color: textColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
