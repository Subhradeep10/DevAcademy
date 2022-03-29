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
          mainAxisAlignment: MainAxisAlignment.start,
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
            Wrap(
              spacing: 16.0, // gap between adjacent chips
              runSpacing: 8.0, // gap between lines
              direction: Axis.horizontal,

              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage('assets/images/Campus_Ambassador.png'),
                      height: 150,
                    ),
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
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(
                          "Place where you can find all the resources and details of ambassador/fellowship that are available across different countries and companies.",
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
                          onPressed: () {},
                          child: const Text(
                            "View More",
                          ))
                    ],
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage('assets/images/Open_Source.png'),
                      height: 150,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'Open Source',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 0, 19, 71),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(
                          "Here you can find all the resources and details of Open Source Programs and event that are available across different countries.",
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
                          onPressed: () {},
                          child: const Text(
                            "View More",
                          ))
                    ],
                  ),
                ),
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
                            color: Color.fromARGB(255, 0, 19, 71),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(
                          "A collection of all the tools that are required in web development made by the community to ease the process of web development like CSS Generators, Icons, Illustration, etc.",
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
                          onPressed: () {},
                          child: const Text(
                            "View More",
                          ))
                    ],
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage('assets/images/App_Development.png'),
                      height: 150,
                    ),
                  ),
                ),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                          onPressed: () {},
                          child: const Text(
                            "View More",
                          ))
                    ],
                  ),
                ),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
      drawer: Drawer(),
    );
  }
}