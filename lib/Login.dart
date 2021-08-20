import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college/ContentPage.dart';
import 'package:college/Settings.dart';
import 'package:college/google_sign_in.dart';
import 'package:college/sign_up_wigdget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text('PSVPEC',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
           ),

          centerTitle: true,
        ),
        body: ChangeNotifierProvider(
          create: (context) =>GoogleSignInProvider(),
          child: StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot){
      final provider = Provider.of<GoogleSignInProvider>(context);

    if (provider.isSigningIn) {
    return buildLoading();
    } else if (snapshot.hasData) {
    return ContentPage();
    } else {
    return SignUpWidget();
    }
    }
        ),
      ),
    )
    );

  }
  Widget buildLoading() => Center(child: CircularProgressIndicator(color: Colors.red,),);
}
