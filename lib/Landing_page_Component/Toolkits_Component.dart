import 'package:flutter/material.dart';

class Toolkits extends StatelessWidget {
  const Toolkits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    color: Color.fromARGB(255, 0, 19, 71),
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
                    color: Color.fromARGB(255, 0, 68, 255),
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
    );
  }
}
