import 'package:flutter/material.dart';
import 'dart:convert';

// ignore: library_prefixes
import 'package:url_launcher/url_launcher.dart';
import '../Utils/Routes.dart';
import '../Widget/Search_Widget.dart';
import '../Widget/WebViewWidget.dart';

class WebDevelopment extends StatefulWidget {
  const WebDevelopment({Key? key}) : super(key: key);

  @override
  State<WebDevelopment> createState() => _WebDevelopmentState();
}

class _WebDevelopmentState extends State<WebDevelopment> {
  // Fetch content from the json file

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
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Web Development Tools',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: FutureBuilder(
                    builder: (context, snapshot) {
                      var showData = json.decode(snapshot.data.toString());
                      return ListView.builder(
                        itemCount: showData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                width: MediaQuery.of(context).size.width - 20,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: InkWell(
                                  onTap: () async {
                                    Navigator.pushNamed(context,MyRoutes.Web+'/'+showData[index]['head']+'|'+showData[index]['link'],);

                                  },
                                  splashColor: Color(0xff673ab7),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Ink(
                                    width:
                                        MediaQuery.of(context).size.width - 20,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
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
                                        Image(
                                          image: AssetImage(
                                              showData[index]['image']),
                                          width: 350,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          showData[index]['head'],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(
                                          height: 10,
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
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    future: DefaultAssetBundle.of(context)
                        .loadString("assets/Data/Web_Development_data.json"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
