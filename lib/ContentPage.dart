import 'package:college/Settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'google_sign_in.dart';
const _url = 'https://psvpec.in';
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
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
                     children: <Widget>[
                   SizedBox(height: 24,),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: new Container(
                          child:
                           new CircleAvatar(
                         backgroundImage: new AssetImage('images/prince1PSVPEC.jpg'),
                      radius: 80.0,

      ),
    ),
                    ),
                  ],
                ),
                       Column(
                         children: [
    SizedBox(height: 0.1,),
                           Row(
                             children: [
                               Padding(
                                 padding: EdgeInsets.all(16),
                                 child: Text('Welcome , ',
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
                                 child: Text(name,
                                   textAlign: TextAlign.justify,
                                   overflow: TextOverflow.ellipsis,
                                   maxLines: 3,
                                   style: TextStyle(
                                     fontSize: 25,
                                     fontWeight: FontWeight.w900,
                                   ),),
                               ),
                             ],
                           ),
                         ],
                       ),

                     ],
                   ),
            SizedBox(height: 10,),
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
                borderRadius: BorderRadius.all(
              Radius.circular(30)
                ),
                ),
                      height: 100,
                          child: new FlatButton(
                            onPressed: () {
                              print('hii');

                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('  Circular ',
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                              ),
                              ),
                            ),
                          )
                    ),
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
                          borderRadius: BorderRadius.all(
                              Radius.circular(30)
                          ),
                        ),
                        height: 100,
                        child: new FlatButton(
                          onPressed: () {
                            launch(_url);

                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Website',
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                              ),
                             ),
                          ),
                        )
                    ),
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
                          borderRadius: BorderRadius.all(
                              Radius.circular(30),
                          ),
                        ),
                        height: 100,
                        child: new FlatButton(
                          onPressed: () {
                            print('hii');

                          }, child: Align(
                          alignment: Alignment.centerLeft,
                            child: Text('Contact Us ',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                            ),
                         ),
                          ),
                        )
                    ),
                    flex: 100,
                  )
                ],
              ),
            ),
          ],
        ),


        ),
        );

  }
}

/*void _launchURL()  {

  if(canLaunch(_url)){
    launch(_url);
  }
  else{
    throw 'Could not launch $_url';
  }
}
 */
