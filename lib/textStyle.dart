import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

//For All App common Textstyle
class TextStyles {
  static TextStyle headingBigWhite = TextStyle(
    color: ColorsConst.PrimryColor,
    fontSize: 13,
    fontFamily: 'Poppins',
  );
  static TextStyle headingBigBlack = TextStyle(
    color: ColorsConst.PrimryblackColor,
    fontSize: 13,
    letterSpacing: 0.2,
    fontFamily: 'Poppins',
  );

  static TextStyle ButtionPrimaryStyle = TextStyle(
    color: ColorsConst.White,
    fontSize: Spacings.xmedium,
    fontFamily: 'Poppins',
  );
  static TextStyle ButtionPrimaryStyletwo = TextStyle(
    color: ColorsConst.PrimryblackColor,
    fontSize: Spacings.xmedium,
    fontFamily: 'Poppins',
  );
  static TextStyle RoundPrimaryStyle = TextStyle(
    color: ColorsConst.White,
    fontSize: 13,
    fontFamily: 'Poppins',
  );

  static TextStyle BtnPrimaryStyle = TextStyle(
    color: ColorsConst.White,
    fontSize: 16,
    fontFamily: 'Poppins',
  );
  static TextStyle textstylebc = TextStyle(
    color: ColorsConst.PrimryblackColor,
    fontSize: Spacings.xmedium,
    fontFamily: 'Poppins',
    letterSpacing: 0.2,
  );

  static TextStyle cardstylebx = TextStyle(
    color: ColorsConst.fontcolorblck,
    fontSize: Spacings.xmedium,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.normal,
  );
  static TextStyle cardheadphone = TextStyle(
    color: ColorsConst.fontcolorblck,
    fontSize: Spacings.xxmedium,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.normal,
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

  static TextStyle helptext = TextStyle(
    color: ColorsConst.fontcolorblck,
    fontSize: Spacings.smedium,
    letterSpacing: 0.28,
    fontFamily: 'HelveticaNowDisplay',
  );

  static TextStyle AamountText = TextStyle(
    color: ColorsConst.neioncolor,
    fontSize: Spacings.large,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );

  static TextStyle product_box_txt = TextStyle(
    color: ColorsConst.prod_box_txt,
    fontSize: Spacings.smedium,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );
  static TextStyle product_box_txt_sec = TextStyle(
    color: ColorsConst.prod_box_txt_color,
    fontSize: Spacings.smedium,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );
  static TextStyle Aamount_small_Text = TextStyle(
    color: ColorsConst.neioncolor,
    fontSize: Spacings.smedium,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );
  static TextStyle addproductText = TextStyle(
    color: ColorsConst.PrimryblackColor,
    fontSize: Spacings.large,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.bold,
  );

  static TextStyle paytext = TextStyle(
    color: ColorsConst.White,
    fontSize: Spacings.smedium,
    fontFamily: 'HelveticaNowDisplay',
    fontWeight: FontWeight.normal,
  );
  static TextStyle pertext = TextStyle(
      color: ColorsConst.White,
      fontSize: Spacings.smedium,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.14);

  static TextStyle Header_File = TextStyle(
      color: ColorsConst.PrimryblackColor,
      fontSize: Spacings.xlarge,
      fontWeight: FontWeight.w900,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.14);
  static TextStyle Header_File_s_size = TextStyle(
      color: ColorsConst.PrimryblackColor,
      fontSize: Spacings.xxmedium,
      fontWeight: FontWeight.w900,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.14);
  static TextStyle Header_File_m_size = TextStyle(
      color: ColorsConst.PrimryblackColor,
      fontSize: Spacings.large,
      fontWeight: FontWeight.w900,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.14);

  static TextStyle sellproduct_checkbox = TextStyle(
      color: ColorsConst.fontcolorblck,
      fontSize: Spacings.smedium,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.28);

  static TextStyle product_txt = TextStyle(
      color: ColorsConst.filter_bg_color,
      decoration: TextDecoration.underline,
      fontSize: Spacings.smedium,
      textBaseline: TextBaseline.alphabetic,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.28);
  static TextStyle orders_txt = TextStyle(
      color: ColorsConst.PrimryblackColor,
      fontSize: Spacings.xmedium,
      textBaseline: TextBaseline.alphabetic,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.28);

  static TextStyle product_price = TextStyle(
      color: ColorsConst.product_text_color,
      fontSize: Spacings.xmedium,
      fontFamily: 'HelveticaNowDisplay',
      fontWeight: FontWeight.bold,
      letterSpacing: 0.28);

  static TextStyle sellproduct_price = TextStyle(
      color: ColorsConst.pricecolor,
      fontSize: Spacings.smedium,
      fontFamily: 'HelveticaNowDisplay',
      fontWeight: FontWeight.bold,
      letterSpacing: 0.28);

  static TextStyle cart_cart_price = TextStyle(
      color: ColorsConst.cart_card_text_color,
      fontSize: Spacings.smedium,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.28);

  static TextStyle cart_cart_block = TextStyle(
      color: ColorsConst.fontcolorblck,
      fontSize: Spacings.smedium,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.28);

  static TextStyle product_cat = TextStyle(
      color: ColorsConst.product_txt,
      fontSize: Spacings.smedium,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.28);
  static TextStyle product_del = TextStyle(
      color: ColorsConst.prod_txt,
      fontSize: Spacings.smedium,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.28);

  static TextStyle checkout_text = TextStyle(
      color: ColorsConst.fontcolorblck,
      fontSize: Spacings.xmedium,
      fontFamily: 'HelveticaNowDisplay',
      letterSpacing: 0.28);

  static AppBar buildappbar({String? title, BuildContext? context}) {
    return AppBar(
        title: Text(
          title ?? '-',
          style: TextStyle(color: ColorsConst.PrimryblackColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 30,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: Spacings.medium),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/artwork.png',
                ),
              ),
            );
          },
        ));
  }
}
