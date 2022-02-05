import 'package:college/Contactus.dart';
import 'package:college/Settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'google_sign_in.dart';

import 'InAppwebview.dart';

const _url = 'https://psvpec.in';
final FirebaseAuth _auth = FirebaseAuth.instance;

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name;
    final user = FirebaseAuth.instance.currentUser;
    name = user!.displayName.toString();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff750000),
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => SettingsPage()));
                },
              ),
              ListTile(
                title: const Text('Contact Us'),
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Phone()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff750000),
          title: Text('PSVPEC'),
          centerTitle: true,
        ),
        backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 24,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                            child: new CircleAvatar(
                              backgroundImage:
                                  new AssetImage('images/prince1PSVPEC.jpg'),
                              radius: 80.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Scrollbar(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.1,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  'Welcome , ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  name,
                                  textAlign: TextAlign.justify,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          height: 100,
                          child: new FlatButton(
                            onPressed: () {
                              print('hii');
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '  Circular ',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                      flex: 100,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          height: 100,
                          child: new FlatButton(
                            onPressed: () {
                              //launch(_url);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Inappwebview()));
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Website',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                      flex: 100,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          height: 100,
                          child: new FlatButton(
                            onPressed: () {
                              final provider =
                                  Provider.of<GoogleSignInProvider>(context,
                                      listen: false);
                              provider.logout();
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'SignOut  ',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                      flex: 100,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          height: 100,
                          child: new FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Phone()));
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Contact Us ',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                      flex: 100,
                    )
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
