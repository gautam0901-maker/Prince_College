import 'package:college/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GoogleSignInButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(4),
        child: OutlineButton.icon(
          label: Text(
            'Countinue With Google',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          highlightColor: Colors.black,
          borderSide: BorderSide(color: Colors.black),
          textColor: Colors.blue,
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.grey,
          ),
          onPressed: () {
            final provider =
                Provider.of<GoogleSignInProvider>(context, listen: false);
            provider.login();
          },
        ),
      );
}
