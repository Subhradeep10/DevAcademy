import 'package:dev_academy/Utils/Routes.dart';
import 'package:flutter/material.dart';

class Toolkits_Component extends StatelessWidget {
  const Toolkits_Component({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/Toolkits.png'),
                  height: 150,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  const Text(
                    'Toolkits',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 253, 253, 255),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      "While the number of ways to organize Software is almost infinite, here are some collection of framework and libraries that can help you while you are working on a project or searching around the web or app",
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
                        Navigator.pushNamed(context, MyRoutes.Toolkits);
                      },
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
