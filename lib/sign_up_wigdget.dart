import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:college/Google_Sign_up_widget.dart';
import 'package:college/google_sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 175,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Welcome To PSVPEC',
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
              new Container(
                child: new CircleAvatar(
                  backgroundImage: new AssetImage('images/prince1PSVPEC.jpg'),
                  radius: 75.0,
                ),
              ),
            ],
          ),
          Spacer(),
          GoogleSignInButtonWidget(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Login to countinue',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black26,
            ),
          ),
          Spacer(),
        ],
      );
}
