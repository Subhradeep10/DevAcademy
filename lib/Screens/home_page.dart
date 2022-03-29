import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 24, 59),
        title: const Text(
          'DevAcademy',
        ),
      ),
      body: Column(
        children: const [
          Image(image: AssetImage('assets/images/Proud_Coder_image.png')),
          Text(
            'Welcome To Developer Academy',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 0, 19, 71),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
