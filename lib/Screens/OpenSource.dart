import 'package:flutter/material.dart';
import 'dart:convert';
// ignore: library_prefixes
import 'package:flutter/services.dart';
import 'package:dev_academy/Model/Open_Source_Model.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenSource extends StatefulWidget {
  const OpenSource({Key? key}) : super(key: key);

  @override
  State<OpenSource> createState() => _OpenSourceState();
}

class _OpenSourceState extends State<OpenSource> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 60, 32, 65),
                  Color.fromARGB(255, 19, 0, 77)
                ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 24, 59),
            title: const Center(
              child: Text(
                'DevAcademy',
              ),
            ),
          ),
          // ignore: deprecated_member_use
          body: Center(
            child: Column(
              children: [
                Expanded(
                  child: FutureBuilder(
                    builder: (context, snapshot) {
                      var showData = json.decode(snapshot.data.toString());
                      return ListView.builder(
                        itemCount: showData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: Container(
                              child: Card(
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color.fromARGB(255, 175, 21, 202),
                                            Color.fromARGB(255, 241, 152, 26)
                                          ])),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                        child: Text(
                                          showData[index]['head'],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.network(
                                        showData[index]['image'],
                                        width: 350,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          showData[index]['about'],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton(
                                          onPressed: () async {
                                            final url = showData[index]['link'];
                                            if (await canLaunch(url)) {
                                              await launch(url);
                                            } else {
                                              throw 'Could not launch $url';
                                            }
                                          },
                                          child: const Text('View')),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    future: DefaultAssetBundle.of(context)
                        .loadString("assets/Data/Open_Source_Data.json"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
