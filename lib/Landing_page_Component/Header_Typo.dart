import 'package:flutter/material.dart';

class Header_Component extends StatelessWidget {
  const Header_Component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        Image(
          image: AssetImage('assets/images/Proud_Coder_image.png'),
          height: 300,
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            'Welcome To Developer Academy',
            style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
