import 'package:flutter/material.dart';
import 'dart:convert';
// ignore: library_prefixes
import 'package:flutter/services.dart' as rootBundle;
import 'package:dev_academy/Model/Web_Dev_Model.dart';

class WebDevelopment extends StatefulWidget {
  const WebDevelopment({Key? key}) : super(key: key);

  @override
  State<WebDevelopment> createState() => _WebDevelopmentState();
}

class _WebDevelopmentState extends State<WebDevelopment> {
  List _items = [];

  // Fetch content from the json file

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
      ),
    );
  }
}
