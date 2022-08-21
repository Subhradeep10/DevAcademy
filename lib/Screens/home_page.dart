import 'package:dev_academy/Landing_page_Component/App_Development_Component.dart';
import 'package:dev_academy/Landing_page_Component/Campus_Ambassador_component.dart';
import 'package:dev_academy/Landing_page_Component/Footer_Component.dart';
import 'package:dev_academy/Landing_page_Component/Header_Typo.dart';
import 'package:dev_academy/Landing_page_Component/OpenSource_Component.dart';
import 'package:dev_academy/Landing_page_Component/Toolkits_Component.dart';
import 'package:dev_academy/Landing_page_Component/Web_Development_component.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 60, 32, 65),
              Color.fromARGB(255, 19, 0, 77)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 24, 59),
            leading: SizedBox(
              width: 0,
            ),
            leadingWidth: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DevAcademy',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    launch(
                        'https://www.producthunt.com/posts/devacademy?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-devacademy');
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/product_hunt.png'),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Color(0xffea532a),
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Header_Component(),
                Wrap(
                  spacing: 16.0, // gap between adjacent chips
                  runSpacing: 8.0, // gap between lines
                  direction: Axis.horizontal,

                  children: const [
                    Campus_Ambassador_Component(),
                    OpenSource_Component(),
                    Web_Development_Component(),
                    AppDevelopment_Component(),
                    Toolkits_Component(),
                    Footer_Component(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
