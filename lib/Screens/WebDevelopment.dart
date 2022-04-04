import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class WebDevelopment extends StatefulWidget {
  const WebDevelopment({Key? key}) : super(key: key);

  @override
  State<WebDevelopment> createState() => _WebDevelopmentState();
}

class _WebDevelopmentState extends State<WebDevelopment> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/Data/Web_Development_data.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

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
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, int index) {
            return Card(
              child: Image(
                image: AssetImage(_items[index]["image"]),
                fit: BoxFit.cover,
              ),
            );
          }),
    ));
  }
}
