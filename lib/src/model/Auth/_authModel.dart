import 'package:dio/dio.dart';

class AuthModel {
  final Dio _dio;
  final String _urlUser = "/users?page=1";

  AuthModel() : _dio = initDio();

  void login() async {
    try {
      Response response = await _dio.get(_urlUser);
      print(response.data);
    } catch (e) {
      print(e);
    }
  }
}

initDio() {
  BaseOptions options = new BaseOptions(
    baseUrl: "https://reqres.in/api",
    connectTimeout: 50000,
    receiveTimeout: 30000,
  );
  Dio dio = new Dio(options);

  return dio;
}
