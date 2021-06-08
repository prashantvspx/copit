import 'package:copit/Colors.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget {
  final String? hintText;

  const AppBarCustom({Key? key, this.hintText}) : super(key: key);

  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        widget.hintText ?? '-',
        style: TextStyle(color: ColorsConst.PrimryblackColor),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 30,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          'assets/images/artwork.png',
        ),
      ),
    ));
  }
}
