import 'package:dev_academy/Screens/home_page.dart';
import 'package:dev_academy/Utils/Routes.dart';
import 'package:flutter/material.dart';

import 'Screens/OpenSource.dart';
import 'Screens/WebDevelopment.dart';
import 'Screens/campus_ambassadar.dart';

void main() {
  runApp(MyApp());
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
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.CampusAmbassador: (context) => CampusAmbassador(),
        MyRoutes.WebDevelopment: (context) => WebDevelopment(),
        MyRoutes.OpenSource: (context) => OpenSource(),
      },
    );
  }
}
