import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    String name;
    final user = FirebaseAuth.instance.currentUser;
    name = user!.displayName.toString();
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 13.0, 0.0, 0.0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Settings Page ',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
