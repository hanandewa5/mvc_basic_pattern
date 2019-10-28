import 'package:flutter/material.dart';
import 'package:mvc_basic_pattern/src/_constants/appConfig.dart';
import 'package:mvc_basic_pattern/src/_constants/appTheme.dart';
import 'package:mvc_basic_pattern/src/_navigation/routes.dart';
import 'package:mvc_basic_pattern/src/view/Auth/login.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MyApp extends AppMVC {
  static MaterialApp _app;
  static String get title => _app.title.toString();

  @override
  Widget build(BuildContext context) {
    _app = MaterialApp(
      title: AppConfig.title,
      debugShowCheckedModeBanner: AppConfig.isDebug,
      theme: AppTheme.themeLight,
      onGenerateRoute: Routes.generateRoute,
      home: Login(),
    );

    return _app;
  }
}
