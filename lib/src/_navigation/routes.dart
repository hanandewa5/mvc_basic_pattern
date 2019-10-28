import 'package:flutter/material.dart';
import 'package:mvc_basic_pattern/src/view/RandomWord/randomWord.dart';

class Routes {
  static Route<dynamic> generateRoute(settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => RandomWords());
        break;

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for \"${settings.name}\"'))));
    }
  }
}
