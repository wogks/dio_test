import 'package:dio/dio.dart';

const _API_PREPIX = 'https://jsonplaceholder.typicode.com/posts';

class Server {
  Future<void> getRequest() async {
    Dio dio = Dio();
    final response = await dio.get('$_API_PREPIX/1');
    print(response.data.toString());
  }

  Future<void> postRequest() async {
    Dio dio = Dio();
    final response =
        await dio.post(_API_PREPIX, data: {'id': 5, 'name': 'asdasdfasdf'});
    print(response.data.toString());
  }

  Future<void> getReqWzQuert() async {
    Dio dio = Dio();
    final response =
        await dio.get('http://3.35.1.52:9999/', queryParameters: {'user_id': '6ac101c0-7dce-4aa1-82df-d554e62ea2f6'});
    print(response.data.toString());
  }

  Future<void> getSim() async {
    Dio dio = Dio();
    final response = await dio.get('http://3.35.1.52:9999/');
    print(response.data.toString());
  }

  Future postSim() async {
    Dio dio = Dio();
    final response = await dio.post('http://3.35.1.52:9999/admin/users',
        data: {
          'user_id': '',
          'user_name': '0305 23시21분 정재한 테스트',
          'email': 'wogks27@naver.com',
          'password': 'asdasd!23',
          'mobile': '010-2312-1231',
          'gender': '남성',
          'birth': '0305 23시21분 정재한 테스트',
          'affiliation': 0,
          'finish_pretest1': 0,
          'finish_survey1': 0,
          'finish_test_anxiety': 0,
          'finish_pretest2': 0,
          'finish_survey2': 0,
          'fcm_token': null,
        },
        options: Options(headers: {
          Headers.acceptHeader: 'application/json',
          Headers.contentTypeHeader: 'application/json'
        }));
    return response;
    print(response.data.toString());
  }
}
