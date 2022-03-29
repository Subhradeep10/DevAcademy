import 'package:dev_academy/Screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
