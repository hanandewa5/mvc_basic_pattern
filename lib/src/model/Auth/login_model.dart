import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mvc_basic_pattern/src/_constants/appConfig.dart';

class LoginModel {
  bool error;
  String pesan;

  LoginModel({this.error, this.pesan});

  factory LoginModel.createLogin(Map<String, dynamic> object) {
    return LoginModel(error: object["error"], pesan: object["pesan"]);
  }

  static Future<LoginModel> login(String email, String password) async {
    String urlApi = AppConfig.apiUrl + "/auth/login";
    Map data = {"email": email, "password": password};
    var body = json.encode(data);
    var resApi = await http.post(urlApi,
        body: body);
    var jsonObject = json.decode(resApi.body);
    print("${resApi.statusCode}");

    return LoginModel.createLogin(jsonObject);
  }
}
