// ignore: file_names
import 'package:dev_academy/Utils/Routes.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Campus_Ambassador_Component extends StatelessWidget {
  const Campus_Ambassador_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(splashColor: const Color(0xff673ab7),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        onTap: (){
          Navigator.pushNamed(
              context, MyRoutes.CampusAmbassador);
        },
        child: Ink(
            width: MediaQuery.of(context).size.width - 20,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 175, 21, 202),
                      Color.fromARGB(255, 241, 152, 26)
                    ])),
            child: Column(
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
                    children: const [
                      Text(
                        'Campus Ambassador',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        child: Text(
                          "Place where you can find all the resources and details of ambassador/fellowship that are available across different countries and companies.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
