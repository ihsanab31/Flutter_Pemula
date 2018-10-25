import 'dart:async';


import 'package:flutter/material.dart';
import 'package:fastprint/homeScreen.dart';


void main() =>
    runApp(new MaterialApp(
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen' : (BuildContext context) => new HomeScreen()
      }
    ));

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  startTime() async{
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState(){
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('images/sima.png'),
      ),
    );
  }
}


