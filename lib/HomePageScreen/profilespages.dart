import 'package:copit/Colors.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/customstring.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class ProfileClass extends StatefulWidget {
  @override
  _ProfileClassState createState() => _ProfileClassState();
}

class _ProfileClassState extends State<ProfileClass> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _numbercontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _studentidcontroller = TextEditingController();
  TextEditingController _schoolcontroller = TextEditingController();

  @override
  void initState() {
    _namecontroller = TextEditingController(text: "Emeline");
    _numbercontroller = TextEditingController(text: "9874563210");
    _emailcontroller = TextEditingController(text: "Emeline@gmail.com");
    _studentidcontroller = TextEditingController(text: "18302");
    _schoolcontroller = TextEditingController(text: "Sophia");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: Spacings.slarge, right: Spacings.slarge),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: Spacings.xmedium),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.medium),
                    child: Container(
                      alignment: Alignment.center,
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/photo.png',
                              height: 90,
                              width: 95,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                              bottom: 1,
                              right: -20,
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: ColorsConst.White,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      color: ColorsConst.btnbgColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  //color: ColorsConst.btnbgColor,
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    color: ColorsConst.White,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.slarge),
                    child: Center(
                      child: Text(
                        CustomsString.Basic_Information,
                        style: TextStyles.AllheadingText,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.large),
                    child: Text(
                      CustomsString.name,
                      style: TextStyles.profiletext,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: CustomTextfeild(
                      controller: _namecontroller,
                      hintText: "",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: Text(
                      CustomsString.Phone_Number,
                      style: TextStyles.profiletext,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: CustomTextfeild(
                      controller: _numbercontroller,
                      hintText: "",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: Text(
                      CustomsString.Email,
                      style: TextStyles.profiletext,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: CustomTextfeild(
                      controller: _emailcontroller,
                      hintText: "",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: Text(
                      CustomsString.Student_ID,
                      style: TextStyles.profiletext,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: CustomTextfeild(
                      controller: _studentidcontroller,
                      hintText: "",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: Text(
                      CustomsString.University,
                      style: TextStyles.profiletext,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Spacings.small),
                    child: CustomTextfeild(
                      controller: _schoolcontroller,
                      hintText: "",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Spacings.xLarge, bottom: Spacings.xxxxLarge),
                    child: ButtonPrimary(
                      enabled: true,
                      text: 'EDIT PROFILE ',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
