import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:flutter/material.dart';

class MyProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyProductpage(),
    );
  }
}

class MyProductpage extends StatefulWidget {
  @override
  _MyProductpageState createState() => _MyProductpageState();
}

class _MyProductpageState extends State<MyProductpage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appbarname: 'My product',
    );
  }
}
