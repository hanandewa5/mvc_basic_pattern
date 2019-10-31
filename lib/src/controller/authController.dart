import 'package:flutter/material.dart';
import 'package:mvc_basic_pattern/src/model/Auth/login_model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AuthController extends ControllerMVC {
  // var login = LoginModel.login("pass", "nasdem121");
  // static void doLogin = print("test");
  static login(BuildContext context, String username, String password) async {
    var resLogin = await LoginModel.login(username, password);
    Alert(context: context,type: AlertType.warning, title: "RFLUTTER", desc: resLogin.pesan, buttons: [
      DialogButton(
        child: Text(
          "FLAT",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pushReplacementNamed(context, 'home'),
        color: Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        child: Text(
          "GRADIENT",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)
        ]),
      )
    ]).show();
  }
}
