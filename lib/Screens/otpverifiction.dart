import 'package:copit/Colors.dart';
import 'package:copit/Screens/createnewpassword.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:flutter/material.dart';

class Otppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyOtpvar(),
    );
  }
}

class MyOtpvar extends StatefulWidget {
  @override
  _MyOtpvarState createState() => _MyOtpvarState();
}

class _MyOtpvarState extends State<MyOtpvar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
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
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(48.0),
                child: Text(
                  'OTP Verification',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: Text('Enter the OTP sent to +919876543210'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      showCursor: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.blue[100],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      showCursor: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.blue[100],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      showCursor: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.blue[100],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      showCursor: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.blue[100],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width,
              //   height: 50,
              //   child:
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
                    text: 'VERIFY & PROCEED ',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatenewPass()));
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
}
