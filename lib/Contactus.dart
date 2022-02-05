import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

_makingPhoneCall() async {
  const url = 'tel: 9840100040';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['to@example.com'],
    cc: ['cc1@example.com', 'cc2@example.com'],
    subject: 'mailto example subject',
    body: 'mailto example body',
  );

  await launch('$mailtoLink');
}

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(null),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'ContactUs',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          height: 100,
                          child: new FlatButton(
                            onPressed: () => launch("tel://9791132633"),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Call ',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                      flex: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          height: 100,
                          child: new FlatButton(
                            onPressed: launchMailto,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Mail  ',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                      flex: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
