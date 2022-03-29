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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/Proud_Coder_image.png'),
              height: 200,
            ),
            const Center(
              child: Text(
                'Welcome To Developer Academy',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 19, 71),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 500,
              color: Color.fromARGB(255, 252, 252, 252),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage('assets/images/Campus_Ambassador.png'),
                      height: 200,
                    ),
                  ),
                  const Text(
                    'Welcome To Developer Academy',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 0, 19, 71),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
