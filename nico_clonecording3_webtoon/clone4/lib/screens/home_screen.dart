import 'package:clone1/models/webtoon_model.dart';
import 'package:clone1/services/api_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons = [];
  bool isLodading = true;

  void waitForwebToons() async {
    webtoons = await ApiService.getTodaysToons();
    isLodading = false;
    setState(() {});
  }
  //웹툰을 기다리기 위해 비동기 함수로 설정

  @override
  void initState() {
    super.initState();
    waitForwebToons();
  } //sm402같은 신호로 알고 있음 정확하지 않아

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1, //음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          '오늘의 웹툰',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
