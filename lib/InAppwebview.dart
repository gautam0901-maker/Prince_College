import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Inappwebview extends StatefulWidget {
  const Inappwebview({Key? key}) : super(key: key);

  @override
  _InappwebviewState createState() => _InappwebviewState();
}

class _InappwebviewState extends State<Inappwebview> {
  double _progress = 0;
  late InAppWebViewController webview;
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: scaffoldkey,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(
                Icons.close_rounded,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
          title: Text(
            'Prince',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Stack(
          children: [
            InAppWebView(
              initialUrlRequest:
                  URLRequest(url: Uri.parse('https://psvpec.in')),
              onWebViewCreated: (InAppWebViewController controller) {
                webview = controller;
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  _progress = progress / 100;
                });
              },
            ),
            _progress < 1
                ? SizedBox(
                    height: 3,
                    child: LinearProgressIndicator(
                      value: _progress,
                      backgroundColor:
                          Theme.of(context).accentColor.withOpacity(0.2),
                    ),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
