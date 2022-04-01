import 'package:dev_academy/Landing_page_Component/App_Development_Component.dart';
import 'package:dev_academy/Landing_page_Component/Campus_Ambassador_component.dart';
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
              const Image(
                image: AssetImage('assets/images/Proud_Coder_image.png'),
                height: 300,
              ),
              const Center(
                child: Text(
                  'Welcome To Developer Academy',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 0, 19, 71),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                spacing: 16.0, // gap between adjacent chips
                runSpacing: 8.0, // gap between lines
                direction: Axis.horizontal,

                children: [
                  Campus_Ambassador_Component(),
                  OpenSource_Component(),
                  Web_Development_Component(),
                  AppDevelopment_Component(),
                  Toolkits_Component(),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromARGB(255, 1, 32, 58),
                      height: 60,
                      child: const SizedBox(
                        child: Center(
                          child: Text(
                            'Made with ❤️ by the DevAcademy',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
