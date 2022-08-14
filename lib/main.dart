import 'package:dev_academy/Screens/Toolkits.dart';
import 'package:dev_academy/Screens/home_page.dart';
import 'package:dev_academy/Screens/splash_screen.dart';
import 'package:dev_academy/Utils/Routes.dart';
import 'package:dev_academy/login-signup/login.dart';
import 'package:dev_academy/login-signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Screens/AppDevelopment.dart';
import 'Screens/OpenSource.dart';
import 'Screens/WebDevelopment.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screens/campus_ambassadar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context) => SplashScreen(),

        "/home": (context) => HomePage(),

          EmailLogin.id: (context) =>  EmailSignup(),
          EmailLogin.id: (context) =>  EmailLogin(),
        MyRoutes.CampusAmbassador: (context) => CampusAmbassador(),
        MyRoutes.WebDevelopment: (context) => WebDevelopment(),
        MyRoutes.OpenSource: (context) => OpenSource(),
        MyRoutes.Toolkits: (context) => Toolkits(),
        MyRoutes.AppDevelopment: (context) => AppDevelopment(),
      },
    );
  }
}
