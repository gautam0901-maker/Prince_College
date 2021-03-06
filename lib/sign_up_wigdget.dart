import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:college/Google_Sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, //Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new Container(
                child: new CircleAvatar(
                  backgroundImage: new AssetImage('images/prince.png'),
                  radius: 75.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 175,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('PSVPEC',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
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
              color: Color(0xffA2CDEC),
            ),
          ),
          Spacer(),
        ],
      );
}
