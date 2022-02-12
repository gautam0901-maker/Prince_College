import 'package:college/Contactus.dart';
import 'package:college/ContentPage.dart';
import 'package:college/Settings.dart';
import 'package:college/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'google_sign_in.dart';

const _url = 'https://psvpec.in';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void OnTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Phone(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue.shade300,
          onTap: OnTappedBar,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: new Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.info,
                color: Colors.black,
              ),
              title: new Text(
                "About Us",
                style: TextStyle(color: Colors.black),
              ),
            ),
            /*  BottomNavigationBarItem(
              icon: new Icon(
                Icons.call,
                color: Colors.black,
              ),
              //  label:
              // new Text(
              //    "Contact",
              //    style: TextStyle(color: Colors.black),
              //  ),
            ),*/
            BottomNavigationBarItem(
              icon: new Icon(Icons.settings, color: Colors.black),
              title: new Text(
                "Settings",
                // style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
