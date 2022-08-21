import 'package:flutter/material.dart';
import 'dart:convert';
import '../Widget/WebViewWidget.dart';

// ignore: library_prefixes
import 'package:url_launcher/url_launcher.dart';

class CampusAmbassador extends StatefulWidget {
  const CampusAmbassador({Key? key}) : super(key: key);

  @override
  State<CampusAmbassador> createState() => _CampusAmbassadorState();
}

class _CampusAmbassadorState extends State<CampusAmbassador> {
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
            ],
          ),
        ),
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
                    'Campus Ambassador Program',
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
                                    final url = showData[index]['link'];
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
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
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    WebViewWidget(
                                                  title: showData[index]
                                                      ['head'],
                                                  url: showData[index]['link'],
                                                ),
                                              ),
                                            );
                                          },
                                          child: const Text('View'),
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
                        .loadString("assets/Data/Campus_Ambassador_Data.json"),
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
