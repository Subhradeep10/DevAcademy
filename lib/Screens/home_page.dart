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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Image(
                          image:
                              AssetImage('assets/images/Campus_Ambassador.png'),
                          height: 200,
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            const Text(
                              'Campus Ambassador',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color.fromARGB(255, 0, 19, 71),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                              child: Text(
                                "Place where you can find all the resources and details of ambassador/fellowship that are available across different countries and companies.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 0, 68, 255),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "View More",
                                ))
                          ],
                        ),
                      ),
                    ],
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
