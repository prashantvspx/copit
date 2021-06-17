import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/AllMenus/customappbar.dart';
import 'package:copit/Colors.dart';
import 'package:copit/DrawerFiles/sellproduct.dart';

import 'package:copit/Screens/loginpage.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FirstPage_Sell_Product extends StatefulWidget {
  const FirstPage_Sell_Product({Key? key, required this.firstpage})
      : super(key: key);
  final VoidCallback firstpage;

  @override
  _FirstPage_Sell_ProductState createState() => _FirstPage_Sell_ProductState();
}

class _FirstPage_Sell_ProductState extends State<FirstPage_Sell_Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: Spacings.xxLarge),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Upload your image',
                  style: TextStyle(
                      fontFamily: 'HelveticaNowDisplay',
                      fontSize: Spacings.large,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: Spacings.medium),
                child: Center(
                  child: Text(
                    'PNG, JPG and GIF files are allowed',
                    style: TextStyle(
                        fontFamily: 'HelveticaNowDisplay',
                        fontSize: Spacings.medium,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(Spacings.smedium),
                child: DottedBorder(
                  dashPattern: [8, 4],
                  strokeWidth: 1,
                  color: ColorsConst.sellpro_border_bcg,
                  strokeCap: StrokeCap.round,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(5),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.height / 1,
                    color: ColorsConst.sellpro_pay_bcg,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: Spacings.xxmedium),
                          child: Image.asset('assets/images/upload.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              getLegalSentenceRichTextWidget(context: context),
                        ),
                        Text(
                          'Upload up to maximum 4 images',
                          style: TextStyle(fontFamily: 'HelveticaNowDisplay'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.all(12)),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DottedBorder(
                          dashPattern: [8, 4],
                          strokeWidth: 1,
                          color: Colors.green,
                          strokeCap: StrokeCap.round,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(8),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 13,
                            width: MediaQuery.of(context).size.height / 13,
                            color: ColorsConst.White,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DottedBorder(
                          dashPattern: [8, 4],
                          strokeWidth: 1,
                          color: Colors.green,
                          strokeCap: StrokeCap.round,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(8),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 13,
                            width: MediaQuery.of(context).size.height / 13,
                            color: ColorsConst.White,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DottedBorder(
                          dashPattern: [8, 4],
                          strokeWidth: 1,
                          color: Colors.green,
                          strokeCap: StrokeCap.round,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(8),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 13,
                            width: MediaQuery.of(context).size.height / 13,
                            color: ColorsConst.White,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DottedBorder(
                          dashPattern: [8, 4],
                          strokeWidth: 1,
                          color: Colors.green,
                          strokeCap: StrokeCap.round,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(8),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 13,
                            width: MediaQuery.of(context).size.height / 13,
                            color: ColorsConst.White,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(
                  height: 1,
                  color: ColorsConst.bclight,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Name of Product',
                        style: TextStyles.sellproduct_checkbox,
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
                        hintText: "Headphone",
                      ),
                    ),
                    SizedBox(
                      height: Spacings.xxmedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: Spacings.medium,
                          left: Spacings.large,
                          right: Spacings.large),
                      child: DropdownButtonFormField(
                        items: [
                          // Create in diffrent screen and then call Hre.
                          DropdownMenuItem(
                            child: Text('selectr category'),
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Spacings.xLarge,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ButtonPrimary(
                        trailing: ImageAssets.backleftLogos(),
                        enabled: true,
                        text: 'NEXT',
                        onTap: () {
                          widget.firstpage();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SellProduct()));
                        },
                      ),
                    ),
                  ],
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
                text: 'Drag and drop or  ', style: TextStyles.headingBigBlack),
            TextSpan(
                text: 'browse',
                style: TextStyles.headingBigWhite,
                recognizer: TapGestureRecognizer()..onTap = () {}),
            TextSpan(
              text: ' to choose a file',
              style: TextStyles.headingBigBlack,
            )
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
