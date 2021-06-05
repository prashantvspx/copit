import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

/// ImageAssets
class ImageAssets {
  /// imageEndPoint
  static String imageEndPoint = 'assets/images/';
  static String backarrowicon = imageEndPoint + 'artwork.png';
  static String logouticon = imageEndPoint + 'logout.png';

  static Image AppLogos({Color? color}) =>
      Image.asset('${imageEndPoint}cop_logo.png',
          color: color, height: Spacings.xxxxLarge);

  static Image CheckLogos({Color? color}) => Image.asset(
        '${imageEndPoint}roundedRectangle.png',
        color: color,
      );
  static Image EyeLogos({Color? color}) => Image.asset(
        '${imageEndPoint}shape.png',
        color: color,
      );

  static Image OtpLogos({Color? color}) => Image.asset(
        '${imageEndPoint}vectorSmartObjec.png',
        color: color,
      );

  static Image backarrowLogos({Color? color}) => Image.asset(
        '${imageEndPoint}artwork.png',
        color: color,
      );
  static Image backleftLogos({Color? color}) => Image.asset(
        '${imageEndPoint}vectorSmartleft.png',
        color: color,
      );
  static Image menusLogos({Color? color}) => Image.asset(
        '${imageEndPoint}menu.png',
        color: color,
      );
  static Image LocationLogos({Color? color}) => Image.asset(
        '${imageEndPoint}location.png',
        color: color,
      );
  static Image alermLogos({Color? color}) => Image.asset(
        '${imageEndPoint}noti.png',
        color: color,
      );
  static Image searchLogos({Color? color}) => Image.asset(
        '${imageEndPoint}search.png',
        color: color,
      );
}
