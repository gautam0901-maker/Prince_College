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
            'Direction',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                  url: Uri.parse(
                      'https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332https://www.google.com/maps/dir/12.9777904,80.1825507/psvpec/@12.9146588,80.1256525,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.85123323m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a52597621e12c79:0x749fd8e5d110fae8!2m2!1d80.1711537!2d12.8512332')),
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
