import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChatesClass(),
    );
  }
}

class ChatesClass extends StatefulWidget {
  @override
  _ChatesClassState createState() => _ChatesClassState();
}

class _ChatesClassState extends State<ChatesClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Stack(
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/photo.png')),
                Positioned(
                  bottom: 8,
                  right: -3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorsConst.neioncolor,
                    ),
                    height: 8,
                    width: 8,
                  ),
                )
              ],
            ),
            title: Text('Jean'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Emeline'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply..'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: Stack(
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/photo.png')),
                Positioned(
                  bottom: 8,
                  right: -3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorsConst.neioncolor,
                    ),
                    height: 8,
                    width: 8,
                  ),
                )
              ],
            ),
            title: Text('Daniel'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('John'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: Stack(
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/photo.png')),
                Positioned(
                  bottom: 8,
                  right: -3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorsConst.neioncolor,
                    ),
                    height: 8,
                    width: 8,
                  ),
                )
              ],
            ),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/photo.png')),
            title: Text('Messages'),
            subtitle: Text('What is Lorem Ipsum Lorem Ipsum is simply.'),
            trailing: Column(
              children: [
                Text('23 min'),
                SizedBox(
                  height: 7,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorsConst.yellowcolor),
                    child: Text('23'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Spacings.xxxLarge, right: Spacings.slarge),
            color: Colors.grey,
            height: 0.2,
          ),
        ],
      ),
    );
  }
}
