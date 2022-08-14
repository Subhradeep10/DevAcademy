import 'dart:async';

import 'package:dev_academy/login-signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.pushNamed(context, '/home'),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedeae7),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/app_icon.png"),
            const SizedBox(
              height: 50,
            ),
            Image.asset("assets/images/app_name.png"),
            const SizedBox(
              height: 80,
            ),
            SpinKitCircle(
              color: Color(0xfff46530),
              size: 100.0,
            ),],
        ),
      ),
    );
  }
}
