import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    //async = 비동기
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
//기다린뒤 작동하는 프로그램을 비동기 프로그램이라고 부름
//await 함수는 비동기 함수 내에서만 사용가능
// await = 뒤의 함수 부분이 실행될 때 까지 기다림
