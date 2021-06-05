import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

//For All App common Textstyle
class TextStyles {
  static TextStyle headingBigWhite = TextStyle(
    color: ColorsConst.PrimryColor,
    fontSize: 13,
    fontFamily: 'Poppins',
    //  fontWeight: FontWeight.w700,
    // fontStyle: FontStyle.normal,
    // height: 1.0833333333333333,
  );
  static TextStyle headingBigBlack = TextStyle(
    color: ColorsConst.PrimryblackColor,
    fontSize: 13,
    letterSpacing: 0.2,
    fontFamily: 'Poppins',
    //  height: 0.8333333333333334
    //  fontWeight: FontWeight.w700,
    // fontStyle: FontStyle.normal,
    // height: 19.2,
  );

  static TextStyle ButtionPrimaryStyle = TextStyle(
    color: ColorsConst.White,
    fontSize: Spacings.xmedium,
    fontFamily: 'Poppins',
    //  fontWeight: FontWeight.w700,
    // fontStyle: FontStyle.normal,
    // height: 0.8333333333333334,
  );

  static TextStyle RoundPrimaryStyle = TextStyle(
    color: ColorsConst.White,
    fontSize: 13,
    fontFamily: 'Poppins',
    //  fontWeight: FontWeight.w700,
    // fontStyle: FontStyle.normal,
    // height: 0.8333333333333334,
  );

  static TextStyle BtnPrimaryStyle = TextStyle(
    color: ColorsConst.White,
    fontSize: 16,
    fontFamily: 'Poppins',
    //  fontWeight: FontWeight.w700,
    // fontStyle: FontStyle.normal,
    // height: 0.8333333333333334,
  );
  static TextStyle textstylebc = TextStyle(
    color: ColorsConst.PrimryblackColor,
    fontSize: Spacings.xLarge,
    fontFamily: 'Poppins',
    // letterSpacing: 0.2,
    // fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );

  static TextStyle cardstylebx = TextStyle(
    color: ColorsConst.fontcolorblck,
    fontSize: Spacings.xmedium,
    // fontFamily: 'Poppins',
    // letterSpacing: 0.2,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );
  static TextStyle gridtextstyle = TextStyle(
    color: ColorsConst.fontcolorblck,
    fontSize: Spacings.xmedium,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );

  static TextStyle AllheadingText = TextStyle(
    color: ColorsConst.fontcolorblck,
    fontSize: Spacings.xxmedium,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );

  static TextStyle profiletext = TextStyle(
    color: ColorsConst.textbackcolor,
    fontSize: Spacings.medium,
    letterSpacing: 0.5,
    fontFamily: 'HelveticaNowDisplay',
  );
}
