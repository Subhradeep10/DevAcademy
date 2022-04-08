import 'package:flutter/material.dart';

import '../Utils/Routes.dart';

class Web_Development_Component extends StatelessWidget {
  const Web_Development_Component({Key? key}) : super(key: key);

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
            const Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage('assets/images/Web_Development.png'),
                  height: 150,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Web Development',
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
                      "A collection of all the tools that are required in web development made by the community to ease the process of web development like CSS Generators, Icons, Illustration, etc.",
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
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.WebDevelopment);
                      },
                      child: const Text(
                        "View More",
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
