import 'package:flutter/material.dart';
import 'package:hatoca/LoginPage/login.dart';
import 'package:hatoca/splash_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: SplashScreen(),
    );
  }
}