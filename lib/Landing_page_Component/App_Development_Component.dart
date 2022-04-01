import 'package:flutter/material.dart';

class AppDevelopment_Component extends StatelessWidget {
  const AppDevelopment_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              const Text(
                'App Development',
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
                  "A Curated collection of all the tools that are required in App Development made by the community to ease the process of App Development like Flutter, React Native, etc.",
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
