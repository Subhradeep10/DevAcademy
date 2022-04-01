import 'package:dev_academy/Landing_page_Component/App_Development_Component.dart';
import 'package:dev_academy/Landing_page_Component/Campus_Ambassador_component.dart';
import 'package:dev_academy/Landing_page_Component/Footer_Component.dart';
import 'package:dev_academy/Landing_page_Component/Header_Typo.dart';
import 'package:dev_academy/Landing_page_Component/OpenSource_Component.dart';
import 'package:dev_academy/Landing_page_Component/Toolkits_Component.dart';
import 'package:dev_academy/Landing_page_Component/Web_Development_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 255, 255),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 24, 59),
          title: const Center(
            child: Text(
              'DevAcademy',
            ),
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
    );
  }
}
