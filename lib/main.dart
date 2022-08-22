import 'package:dev_academy/Screens/Toolkits.dart';
import 'package:dev_academy/Screens/home_page.dart';
import 'package:dev_academy/Screens/splash_screen.dart';
import 'package:dev_academy/Utils/Routes.dart';
import 'package:dev_academy/Widget/WebViewWidget.dart';
import 'package:flutter/material.dart';
import 'Screens/AppDevelopment.dart';
import 'Screens/OpenSource.dart';
import 'Screens/WebDevelopment.dart';
import 'Screens/campus_ambassadar.dart';

void main()  {
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
      onGenerateRoute: (settings) {
        if (settings.name == MyRoutes.CampusAmbassador) {
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => CampusAmbassador(),
              transitionsBuilder: (_, a, __, c) => ScaleTransition(scale: a,child: c,)
          );
        }
        else if (settings.name == MyRoutes.WebDevelopment) {
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => WebDevelopment(),
              transitionsBuilder: (_, a, __, c) => ScaleTransition(scale: a,child: c,)
          );
        }
        else if (settings.name == MyRoutes.OpenSource) {
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => OpenSource(),
              transitionsBuilder: (_, a, __, c) => ScaleTransition(scale: a,child: c,)
          );
        }
        else if (settings.name == MyRoutes.Toolkits) {
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => Toolkits(),
              transitionsBuilder: (_, a, __, c) => ScaleTransition(scale: a,child: c,)
          );
        }
        else if (settings.name == MyRoutes.AppDevelopment) {
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => AppDevelopment(),
              transitionsBuilder: (_, a, __, c) => ScaleTransition(scale: a,child: c,)
          );
        }
        else if(settings.name?.split('/')[1]=='Web'){
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => WebViewWidget(title: settings.name!.split('|')[0].split('/')[2], url: settings.name!.split('|')[1]),
              transitionsBuilder: (_, a, __, c) => ScaleTransition(scale: a,child: c,)
          );
        }

        else if(settings.name=='/'){
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => SplashScreen()
          );
        }
        else if(settings.name=='/home'){
          return PageRouteBuilder(
              settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
              pageBuilder: (_, __, ___) => HomePage()
          );
        }
        // Unknown route

      }
    );
  }
}
