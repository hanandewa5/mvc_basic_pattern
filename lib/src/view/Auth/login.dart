import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvc_basic_pattern/src/_globalWidgets/RaisedGradientButton.dart';
import 'package:mvc_basic_pattern/src/controller/authController.dart';
import 'package:mvc_basic_pattern/src/model/Auth/login_model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends StateMVC<Login> {
  _LoginState() : super(AuthController());
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: Column(
                children: <Widget>[
                  Flexible(
                      flex: 7,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(110)),
                        child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xFFCB5B25),
                                  const Color(0xFFE49035)
                                ],
                              ),
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment(0.0, 1),
                                  child: Image.asset(
                                      "lib/assets/images/image_02.png"),
                                ),
                                Column(
                                  children: <Widget>[
                                    Flexible(
                                      flex: 2,
                                      child: Container(
                                        alignment: Alignment(0.0, 0.5),
                                        child: Image.asset(
                                          "lib/assets/images/unesco.png",
                                          width: 150,
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        alignment: Alignment(0.8, 0.0),
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontFamily: "Poppins-Bold",
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      )),
                  Flexible(
                    flex: 10,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 8, bottom: 8),
                                    child: Card(
                                      shape: StadiumBorder(
                                          side: BorderSide(
                                              color: Colors.white, width: 2.0)),
                                      elevation: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 18.0, right: 18.0),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              icon: Icon(
                                                Icons.email,
                                                color: Colors.grey,
                                              ),
                                              border: InputBorder.none,
                                              hintText: 'Email'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20, top: 8, bottom: 8),
                                    child: Card(
                                      shape: StadiumBorder(
                                          side: BorderSide(
                                              color: Colors.white, width: 2.0)),
                                      elevation: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 18.0, right: 18.0),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              icon: Icon(
                                                Icons.lock,
                                                color: Colors.grey,
                                              ),
                                              border: InputBorder.none,
                                              hintText: 'Password'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Container(
                                      alignment: Alignment(1, 0.0),
                                      width: MediaQuery.of(context).size.width,
                                      child: Text("Forgot Passwords ?"),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25),
                                    child: RaisedGradientButton(
                                        child: Text(
                                          'LOGIN',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFFE18A32),
                                            Color(0xFFE06529)
                                          ],
                                        ),
                                        onPressed: () {
                                          LoginModel.login("hanan@gmail.com", "nasdem121").then((value){
                                            print(value);
                                          });
                                        }),
                                  ),
                                  Center(
                                    child: Text(
                                        "Don't have an account ? Register"),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
