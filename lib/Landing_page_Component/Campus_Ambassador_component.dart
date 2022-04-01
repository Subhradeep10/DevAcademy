// ignore: file_names
import 'package:dev_academy/Utils/Routes.dart';
import 'package:flutter/material.dart';

class Campus_Ambassador_Component extends StatelessWidget {
  const Campus_Ambassador_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.CampusAmbassador);
                  },
                  child: const Text(
                    "View More",
                  ))
            ],
          ),
        )
      ],
    ));
  }
}
