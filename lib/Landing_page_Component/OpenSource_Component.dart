import 'package:flutter/material.dart';

import '../Utils/Routes.dart';

class OpenSource_Component extends StatelessWidget {
  const OpenSource_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(onTap: (){
        Navigator.pushNamed(context, MyRoutes.OpenSource);
      },splashColor: const Color(0xff673ab7),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Ink(
          width: MediaQuery.of(context).size.width - 20,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 175, 21, 202),
                    Color.fromARGB(255, 241, 152, 26)
                  ])),
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('assets/images/Open_Source.png'),
                    height: 150,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: const [
                    Text(
                      'Open Source',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        "Here you can find all the resources and details of Open Source Programs and event that are available across different countries.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
