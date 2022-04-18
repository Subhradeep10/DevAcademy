import 'package:dev_academy/Screens/Toolkits.dart';
import 'package:dev_academy/Screens/home_page.dart';
import 'package:dev_academy/Utils/Routes.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Screens/AppDevelopment.dart';
import 'Screens/OpenSource.dart';
import 'Screens/WebDevelopment.dart';
import 'Screens/campus_ambassadar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final initFuture = MobileAds.instance.initialize(
    appId: 'ca-app-pub-3940256099942544~3347511713',
  );
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
        MyRoutes.Toolkits: (context) => Toolkits(),
        MyRoutes.AppDevelopment: (context) => AppDevelopment(),
      },
    );
  }
}
