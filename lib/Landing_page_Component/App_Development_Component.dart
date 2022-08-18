import 'package:dev_academy/Utils/Routes.dart';
import 'package:flutter/material.dart';

class AppDevelopment_Component extends StatelessWidget {
  const AppDevelopment_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(onTap: (){
        Navigator.pushNamed(context, MyRoutes.AppDevelopment);
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
              Center(
                child: Column(
                  children: const [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Image(
                          image: AssetImage('assets/images/App_Development.png'),
                          height: 150,
                        ),
                      ),
                    ),
                    Text(
                      'App Development',
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
                        "A Curated collection of all the tools that are required in App Development made by the community to ease the process of App Development like Flutter, React Native, etc.",
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
