import 'package:copit/Colors.dart';
import 'package:copit/Screens/otpverifiction.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: EnterOtpNumberClass(),
    );
  }
}

class EnterOtpNumberClass extends StatefulWidget {
  @override
  _EnterOtpNumberClassState createState() => _EnterOtpNumberClassState();
}

class _EnterOtpNumberClassState extends State<EnterOtpNumberClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: CircleAvatar(
                    radius: 80,
                    backgroundColor: ColorsConst.edittxtbgColor,
                    child: Image.asset(
                      'assets/images/vectorSmartObject.png',
                      fit: BoxFit.fitHeight,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Spacings.large),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: Spacings.medium),
                  child: getLegalSentenceRichTextWidget(context: context)),
              SizedBox(
                height: Spacings.xxLarge,
              ),
              CustomTextfeild(
                hintText: "Enter Your Number",
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(8, 20, 8, 20),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 50,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            contentPadding: EdgeInsets.all(8),
                            content: Container(
                              height: 230,
                              // width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      // color: Colors.grey[300],
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.close,
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.blue[200],
                                    radius: 25,
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.blue[700],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text(
                                      'OTP Verified',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'OTP has been successfully verified.Kindly create your new password.',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'OK',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        side: BorderSide(
                                            color: Colors.blue, width: 2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: ButtonPrimary(
                    trailing: ImageAssets.backleftLogos(),
                    enabled: true,
                    text: 'GET OTP ',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Otppage()));
                    },
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Didn\'t receive the link ?',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Resend',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              )
              // )
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
                text: 'we will send you an ',
                style: TextStyles.headingBigBlack),
            TextSpan(
                text: 'One Time Password',
                style: TextStyles.headingBigWhite,
                recognizer: TapGestureRecognizer()..onTap = () {}),
            TextSpan(
              text: '\n on this mobile number',
              style: TextStyles.headingBigBlack,
            )
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
