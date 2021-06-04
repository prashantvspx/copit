import 'package:copit/Colors.dart';
import 'package:copit/Screens/SignIn.dart';
import 'package:copit/Screens/forgotpassword.dart';
import 'package:copit/Screens/otpverifiction.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoginpageClass(),
    );
  }
}

class LoginpageClass extends StatefulWidget {
  @override
  _LoginpageClassState createState() => _LoginpageClassState();
}

class _LoginpageClassState extends State<LoginpageClass> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 60, bottom: 20),
                      child: ImageAssets.AppLogos(),
                    ),
                    Text(
                      'Please login to your account',
                      style: TextStyle(height: 2),
                    ),

                    SizedBox(
                      height: Spacings.medium,
                    ),
                    CustomTextfeild(
                      hintText: "Email",
                      controller: emailController,
                    ),
                    SizedBox(
                      height: Spacings.xxmedium,
                    ),
                    CustomTextfeild(
                      hintText: "Password",
                      isPassword: true,
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: Spacings.medium,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: Spacings.medium, top: Spacings.large),
                        child: Text(
                          'Forgot password ?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: Spacings.medium),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: Spacings.large,
                    ),
                    ButtonPrimary(
                      trailing: ImageAssets.backleftLogos(),
                      enabled: true,
                      text: 'SIGN UP',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EnterNumber()));
                      },
                    ),
                    // Text4
                    Padding(
                      padding: EdgeInsets.only(top: Spacings.xxxxLarge),
                      child: RichText(
                        text: TextSpan(
                            text: 'Dont have an account ? ',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                            children: [
                              TextSpan(
                                text: 'Sign up',
                                style: TextStyle(
                                    color: ColorsConst.PrimryColor,
                                    decoration: TextDecoration.underline),
                              )
                            ]),
                      ),
                    ),
                    // Text('Already have an Account ? Sign in')
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
