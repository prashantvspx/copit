import 'package:copit/Colors.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInClass(),
    );
  }
}

class SignInClass extends StatefulWidget {
  @override
  _SignInClassState createState() => _SignInClassState();
}

class _SignInClassState extends State<SignInClass> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                child: AppBar(
                    backgroundColor: Colors.white,
                    leading: ImageIcon(
                      AssetImage("assets/images/artwork.png"),
                      color: Colors.black,
                    )),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: Spacings.medium)),
                          ImageAssets.AppLogos(),
                          SizedBox(
                            height: Spacings.medium,
                          ),
                          Text(
                            'Please create in account',
                            style: TextStyle(
                                height: 2,
                                fontSize: 14,
                                letterSpacing: 0.24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: Spacings.xxLarge,
                                left: Spacings.large,
                                right: Spacings.large),
                            child: DropdownButtonFormField(
                              items: [
                                // Create in diffrent screen and then call Hre.
                                DropdownMenuItem(
                                  child: Text('University school'),
                                  value: '1',
                                ),
                                DropdownMenuItem(
                                  child: Text('University school'),
                                  value: '2',
                                ),
                                DropdownMenuItem(
                                  child: Text('University school'),
                                  value: '3',
                                ),
                              ],
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                fillColor: ColorsConst.edittxtbgColor,
                                filled: true,
                                //  contentPadding:
                                //EdgeInsets.fromLTRB(15, 15, 15, 15),
                                // hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Spacings.medium,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.xxmedium,
                                left: Spacings.large,
                                right: Spacings.large),
                            child: CustomTextfeild(
                              hintText: "Password",
                              isPassword: true,
                              controller: passwordController,
                            ),
                          ),
                          SizedBox(
                            height: Spacings.xxmedium,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium,
                                left: Spacings.large,
                                right: Spacings.large),
                            child: CustomTextfeild(
                              hintText: "Confirm Password",
                              isPassword: true,
                              controller: passwordController,
                            ),
                          ),
                          SizedBox(
                            height: Spacings.large,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (a) {},
                              ),
                              Expanded(
                                  child: getLegalSentenceRichTextWidget(
                                      context: context)),
                            ],
                          ),
                          SizedBox(
                            height: Spacings.xLarge,
                          ),
                          ButtonPrimary(
                            trailing: ImageAssets.backleftLogos(),
                            enabled: true,
                            text: 'SIGN UP',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                          ),
                          SizedBox(
                            height: Spacings.xxxxLarge,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Already have an Account ? ',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Poppins'),
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
            ],
          ),
        ),
      ),
    );
  }

  Widget getLegalSentenceRichTextWidget({BuildContext? context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'I agree to the ',
              style: TextStyles.headingBigBlack,
            ),
            TextSpan(
                text: 'Terms & Conditions',
                style: TextStyles.headingBigWhite,
                recognizer: TapGestureRecognizer()..onTap = () {}),
            TextSpan(text: ' and \n', style: TextStyles.headingBigBlack),
            TextSpan(
                text: 'Privacy & Policy',
                style: TextStyles.headingBigWhite,
                recognizer: TapGestureRecognizer()..onTap = () async {})
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}














 //   AppNavigatorFuelLib().navigateToAppWebView(
                    //       context: context,
                    //       themeData: ThemeUtilsWhitelabel.getThemeData(),
                    //       headers: UrlUtils.getWebLinkHeader(
                    //           acceptLanguage:
                    //               appLocalisations.locale.languageCode),
                    //       url: UrlUtils.getWebRedirectUrl(
                    //           tag: UrlUtils.tagDataPolicies,
                    //           providerId: Config.providerId));
                    // }),