import 'package:copit/Colors.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

class CreatenewPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CreateNewPassword(),
    );
  }
}

class CreateNewPassword extends StatefulWidget {
  @override
  _CreateNewPasswordState createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade50,
          leading: ImageIcon(
            AssetImage("assets/images/artwork.png"),
            color: ColorsConst.PrimryblackColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade50,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: Spacings.xxxxLarge),
                  child: Center(
                      child: Text('Create New Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Spacings.medium))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Spacings.medium),
                  child: Center(
                      child: Text(
                          'Your new password must be different \n     from previous used passwords',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: Spacings.xLarge,
                      left: Spacings.large,
                      right: Spacings.large),
                  child: Container(
                    child: CustomTextfeild(
                      hintText: "Password",
                      isPassword: true,
                      controller: passwordController,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: Spacings.medium, top: Spacings.medium),
                    child: Text(
                      'Must be at least 8 characters.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: Spacings.xLarge,
                      left: Spacings.large,
                      right: Spacings.large),
                  child: Container(
                    child: CustomTextfeild(
                      hintText: "Confirm Password",
                      controller: passwordController,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: Spacings.xLarge,
                        left: Spacings.large,
                        right: Spacings.large),
                    child: ButtonPrimary(
                      trailing: ImageAssets.backleftLogos(),
                      enabled: true,
                      text: 'RESET PASSWORD',
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  contentPadding: EdgeInsets.all(8),
                                  content: Container(
                                    height: 280,
                                    width: 260,
                                    //width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(
                                              Icons.close,
                                            ),
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundColor:
                                              ColorsConst.edittxtbgColor,
                                          radius: 25,
                                          child: Icon(
                                            Icons.done,
                                            color: ColorsConst.PrimryColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: Text(
                                            'Reset Password',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: Spacings.medium),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Your password has been Reset successfully.',
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
                                              'BACK TO MY APP',
                                              style: TextStyle(
                                                  fontSize: Spacings.smedium,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              side: BorderSide(
                                                  color:
                                                      ColorsConst.PrimryColor,
                                                  width: 2),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
