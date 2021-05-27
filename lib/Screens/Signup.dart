import 'package:copit/Colors.dart';
import 'package:copit/Screens/SignIn.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

import '../custombuttion.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpClass(),
    );
  }
}

class SignUpClass extends StatefulWidget {
  @override
  _SignUpClassState createState() => _SignUpClassState();
}

class _SignUpClassState extends State<SignUpClass> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController studentidController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: Spacings.large, right: Spacings.large),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: Spacings.xxLarge,
                      ),
                      ImageAssets.AppLogos(),
                      SizedBox(
                        height: Spacings.medium,
                      ),
                      Text(
                        'Please create in account',
                        style: TextStyle(
                            color: ColorsConst.PrimryblackColor,
                            height: 2,
                            fontSize: Spacings.smedium,
                            letterSpacing: 0.24,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        height: Spacings.xLarge,
                      ),
                      CustomTextfeild(
                        hintText: "Name",
                        controller: nameController,
                      ),
                      SizedBox(
                        height: Spacings.medium,
                      ),
                      CustomTextfeild(
                        hintText: "Email",
                        controller: emailController,
                      ),
                      SizedBox(
                        height: Spacings.medium,
                      ),
                      CustomTextfeild(
                        hintText: "Phone Number",
                        controller: numberController,
                      ),
                      SizedBox(
                        height: Spacings.medium,
                      ),
                      CustomTextfeild(
                        hintText: "Student ID",
                        controller: studentidController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ButtonPrimary(
                        enabled: true,
                        text: 'Next ',
                        trailing: ImageAssets.backleftLogos(),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                      ),
                      SizedBox(
                        height: Spacings.xxxLarge,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: 'Already have an Account ? ',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Sign in',
                                style: TextStyle(
                                    color: ColorsConst.PrimryColor,
                                    fontFamily: 'Poppins',
                                    fontSize: 17,
                                    decoration: TextDecoration.underline),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
