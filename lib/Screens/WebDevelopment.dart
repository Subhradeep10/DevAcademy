import 'package:flutter/material.dart';

class WebDevelopment extends StatefulWidget {
  const WebDevelopment({Key? key}) : super(key: key);

  @override
  State<WebDevelopment> createState() => _WebDevelopmentState();
}

class _WebDevelopmentState extends State<WebDevelopment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 24, 59),
        title: const Center(
          child: Text(
            'DevAcademy',
          ),
        ),
      ),
    ));
  }
}
