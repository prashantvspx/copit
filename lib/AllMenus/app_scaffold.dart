import 'package:copit/Colors.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatefulWidget {
  final String? appbarname;
  final Widget? appbarimg;
  final Widget? body;
  final Widget? bottembar;

  AppScaffold(
      {@required this.appbarname, this.appbarimg, this.body, this.bottembar});
  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.appbarname ?? '-',
            style: TextStyles.textstylebc,
          ),
          backgroundColor: Colors.grey[50],
          elevation: 0,
          leading: widget.appbarimg ??
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ImageIcon(
                  AssetImage(ImageAssets.backarrowicon),
                  size: Spacings.large,
                  color: ColorsConst.PrimryblackColor,
                ),
              ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: Spacings.medium),
                child: GestureDetector(
                  //onTap: () {},
                  child: ImageIcon(
                    AssetImage("assets/images/search.png"),
                    size: Spacings.large,
                    color: ColorsConst.PrimryblackColor,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(right: Spacings.medium),
              child: GestureDetector(
                onTap: () {},
                child: ImageIcon(
                  AssetImage("assets/images/location.png"),
                  size: Spacings.large,
                  color: ColorsConst.PrimryblackColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: Spacings.medium),
              child: GestureDetector(
                onTap: () {},
                child: ImageIcon(
                  AssetImage("assets/images/noti.png"),
                  size: Spacings.large,
                  color: ColorsConst.PrimryblackColor,
                ),
              ),
            ),
          ]),
      body: widget.body ?? Offstage(),
      bottomNavigationBar: widget.bottembar ?? Offstage(),
    );
  }
}
