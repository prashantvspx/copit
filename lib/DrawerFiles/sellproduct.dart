import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:flutter/material.dart';

class SellProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SellProductPage(),
    );
  }
}

class SellProductPage extends StatefulWidget {
  @override
  _SellProductPageState createState() => _SellProductPageState();
}

class _SellProductPageState extends State<SellProductPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appbarname: 'Sell Product',
    );
  }
}
