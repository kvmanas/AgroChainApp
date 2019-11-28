import 'dart:async';

import 'package:agroapp/pages/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  void startTime() async {
    Timer(Duration(seconds: 2), () {
      navigationToPage();
    });
  }

  void navigationToPage() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FractionallySizedBox(
                    widthFactor: 0.3,
                    child: Hero(
                        tag: 'logo',
                        child: Image.asset(
                          'assets/logo.png',
                        ))),
                FractionallySizedBox(
                    widthFactor: 0.4,
                    child: Hero(
                        tag: 'name',
                        child: Image.asset(
                          'assets/agrochain.png',
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
