import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 44, 109),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 24, 59),
          title: const Text(
            'DevAcademy',
          ),
        ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: const Text(
              'Welcome to 30 days of  Flutter',
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
