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
    return Scaffold(
      body: Text(
        'Hello mukesh and jay',
      ),
    );
  }
}
