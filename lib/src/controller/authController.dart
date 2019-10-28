import 'package:mvc_basic_pattern/src/model/Auth/_authModel.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class AuthController extends ControllerMVC {
  static void login() => AuthModel().login();
}
