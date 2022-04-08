import 'package:flutter/material.dart';

class AppDevelopment_Component extends StatelessWidget {
  const AppDevelopment_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Image(
                        image: AssetImage('assets/images/App_Development.png'),
                        height: 150,
                      ),
                    ),
                  ),
                  const Text(
                    'App Development',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
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
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: const Text(
                        "View More",
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
