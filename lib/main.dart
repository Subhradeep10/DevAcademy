import 'package:dev_academy/Screens/Toolkits.dart';
import 'package:dev_academy/Screens/home_page.dart';
import 'package:dev_academy/Utils/Routes.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Screens/AppDevelopment.dart';
import 'Screens/OpenSource.dart';
import 'Screens/WebDevelopment.dart';
import 'Screens/campus_ambassadar.dart';

AppOpenAd? openAd;

Future<void> loadAd() async {
  await AppOpenAd.load(
      adUnitId: 'ca-app-pub-5789367835300353/7450323412',
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(onAdLoaded: (ad) {
        print('ad is loaded');
        openAd = ad;
        // openAd!.show();
      }, onAdFailedToLoad: (error) {
        print('ad failed to load $error');
      }),
      orientation: AppOpenAd.orientationPortrait);
}

void showAd() {
  if (openAd == null) {
    print('trying tto show before loading');
    loadAd();
    return;
  }

  openAd!.fullScreenContentCallback =
      FullScreenContentCallback(onAdShowedFullScreenContent: (ad) {
    print('onAdShowedFullScreenContent');
  }, onAdFailedToShowFullScreenContent: (ad, error) {
    ad.dispose();
    print('failed to load $error');
    openAd = null;
    loadAd();
  }, onAdDismissedFullScreenContent: (ad) {
    ad.dispose();
    print('dismissed');
    openAd = null;
    loadAd();
  });

  openAd!.show();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MobileAds.instance.initialize();

  await loadAd();
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
