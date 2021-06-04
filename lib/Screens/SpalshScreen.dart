import 'dart:async';

import 'package:copit/Screens/loginpage.dart';
import 'package:copit/Screens/SignIn.dart';
import 'package:copit/Screens/Signup.dart';
import 'package:copit/images.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpalshScreenClass(),
    );
  }
}

class SpalshScreenClass extends StatefulWidget {
  @override
  _SpalshScreenClassState createState() => _SpalshScreenClassState();
}

class _SpalshScreenClassState extends State<SpalshScreenClass> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUpPage())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ImageAssets.AppLogos(),
              new Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: new Text(
                    "YOUR EXCLUSIVE",
                    style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        color: Colors.black,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              new Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: new Text(
                    "  MARKETPLACE",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
