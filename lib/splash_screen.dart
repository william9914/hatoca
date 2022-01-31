import 'dart:async';
import 'package:hatoca/LoginPage/login.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/splash.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("asset/splash.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              'Hatoca',
              style: TextStyle(fontSize: 50.0, color: Colors.white),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}