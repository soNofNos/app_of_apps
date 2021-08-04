import 'dart:async';
import 'package:app_of_apps/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_of_apps/constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.225,
            child:
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/img/logo_transparent.png'))),
      ),
    );
  }
}