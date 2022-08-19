import 'dart:io';
import 'package:dev_academy/Screens/WebViewLoadingError.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatefulWidget {
  const WebViewWidget({Key? key, required this.title, required this.url})
      : super(key: key);
  final String title;
  final String url;

  @override
  State<WebViewWidget> createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewWidget> {
  bool isLoading = true;
  bool hasConnection = true;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      checkUserConnection();
    });

    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 24, 59),
          centerTitle: true,
        ),
        body: hasConnection
            ? (Stack(
                children: [
                  WebView(
                    initialUrl: widget.url,
                    javascriptMode: JavascriptMode.unrestricted,
                    onPageFinished: (finish) {
                      setState(() {
                        isLoading = false;
                      });
                    },
                  ),
                  (isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : Stack())
                ],
              ))
            : const WebViewLoadingErrorScreen(),
      ),
    );
  }

  /*
  * Checks user's Inernet connection
  */
  Future<void> checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup("google.com");
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          hasConnection = true;
        });
      }
    } catch (error) {
      setState(() {
        hasConnection = false;
      });
    }
  }
}
