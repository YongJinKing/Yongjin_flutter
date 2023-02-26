import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    //context는 부모요소에 접근하게 해주는 친구
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.red),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargyTitle() : const Text("noting"),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargyTitle extends StatefulWidget {
  const MyLargyTitle({
    super.key,
  });

  @override
  State<MyLargyTitle> createState() => _MyLargyTitleState();
}

class _MyLargyTitleState extends State<MyLargyTitle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState(); //부모데이터의 변수를 초기화 할때 사용
    print("init");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose(); //무언가를 취소하는 메소드
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Text(
      'My Largy Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
