import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college/Contactus.dart';
import 'package:college/GooglesigninProvider.dart';
import 'package:college/InAppwebview.dart';
import 'package:college/Settings.dart';
import 'package:college/chat_screen.dart';
import 'package:college/circular.dart';
import 'package:college/inAppwebsite.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'google_sign_in.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name;
    final user = FirebaseAuth.instance.currentUser;
    name = user!.displayName.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, $name"),
      ),
      backgroundColor: Colors.blue.shade300,
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          buildCardWithIcon(
            Icons.mail,
            context,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage1();
                  },
                ),
              );
            },
            "Circular",
          ),
          buildCardWithIcon(
            Icons.web,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Website();
              }));
            },
            "Website",
          ),
          buildCardWithIcon(
            Icons.phone,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Phone();
              }));
            },
            "Contact us",
          ),
          buildCardWithIcon(
            Icons.security,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingsPage();
              }));
            },
            "Admission",
          ),
          buildCardWithIcon(
            Icons.widgets,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingsPage();
              }));
            },
            "Events",
          ),
          buildCardWithIcon(
            Icons.bus_alert,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingsPage();
              }));
            },
            "Bus Route",
          ),
          buildCardWithIcon(
            Icons.supervised_user_circle,
            context,
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingsPage();
              }));
            },
            "Queries Portal",
          ),
          buildCardWithIcon(
            Icons.supervisor_account,
            context,
            () {
              Navigator.of(context).pushReplacement(
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return new SettingsPage();
                  },
                ),
              );
            },
            "Toppers",
          ),
          buildCardWithIcon(
            Icons.location_city,
            context,
            () {
              Navigator.of(context).pushReplacement(
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return new Inappwebview();
                  },
                ),
              );
            },
            "Location",
          ),
          buildCardWithIcon(
            Icons.book,
            context,
            () {
              Navigator.of(context).pushReplacement(
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return new SettingsPage();
                  },
                ),
              );
            },
            "Exam Timetable",
          ),
          buildCardWithIcon(
            Icons.exit_to_app,
            context,
            () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
            "Sign Out",
          ),
        ],
      ),
    );
  }

  Padding buildCardWithIcon(
      IconData icon, context, VoidCallback onTap, String pageName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 70,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  pageName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
