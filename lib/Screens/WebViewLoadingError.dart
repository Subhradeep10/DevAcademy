import "package:flutter/material.dart";

class WebViewLoadingErrorScreen extends StatelessWidget {
  const WebViewLoadingErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 32, 65),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "😅",
              style: TextStyle(fontSize: 74),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                "We are unable to load the page\nCheck your Internet Connection",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
