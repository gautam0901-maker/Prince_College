import 'dart:async';

import 'package:college/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 800), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: Image.asset("images/prince.png"),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              SizedBox(
                height: 20,
              ),
              // SleekCircularSlider(
              //   min: 0,
              //   max: 100,
              //   initialValue: 100,
              //   appearance: CircularSliderAppearance(
              //     infoProperties: InfoProperties(
              //         mainLabelStyle: TextStyle(
              //       color: Colors.grey,
              //       fontSize: 25,
              //     )),
              //     customColors: CustomSliderColors(
              //         dotColor: Colors.white,
              //         progressBarColor: Colors.black,
              //         shadowColor: Colors.white,
              //         trackColor: Colors.white),
              //     spinnerDuration: 1,
              //     animDurationMultiplier: 1,
              //     animationEnabled: true,
              //     startAngle: 0.0,
              //     angleRange: 360,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
