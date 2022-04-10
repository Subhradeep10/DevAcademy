// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Footer_Component extends StatelessWidget {
  const Footer_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 1, 32, 58),
            height: 60,
            child: const SizedBox(
              child: Center(
                child: Text(
                  'Made with ❤️ by the DevAcademy',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
