import 'dart:math';
import 'package:copit/DrawerFiles/myproduct.dart';
import 'package:copit/HomePageScreen/kitchenfile.dart';
import 'package:copit/myproduct/mobilescreen.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MainHomePagesClass(),
    );
  }
}

class MainHomePagesClass extends StatefulWidget {
  final List<String> imgList = [
    'assets/images/bag.png',
    'assets/images/bag.png',
    'assets/images/bag.png',
    'assets/images/bag.png',
    'assets/images/bag.png'
  ];

  @override
  _MainHomePagesClassState createState() => _MainHomePagesClassState();
}

class _MainHomePagesClassState extends State<MainHomePagesClass> {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: Spacings.small, left: Spacings.small),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Shop',
              style: TextStyle(
                  fontSize: Spacings.xxLarge,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: Spacings.medium,
                top: Spacings.small,
              ),
              child: Text(
                'Over 45K items available for you.',
                style: TextStyle(
                  fontSize: Spacings.xmedium,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: Spacings.small,
                  left: Spacings.slarge,
                  right: Spacings.slarge),
            ),
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: widget.imgList
                  .map((item) => Container(
                        //  alignment: Alignment.bottomRight,
                        child: Center(
                          child: Image(
                            image: AssetImage(
                              item,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Text(
              'Categories',
              style: TextStyle(
                  fontSize: Spacings.large,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: Spacings.slarge, right: Spacings.slarge),
              child: GridView.count(
                primary: false,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(4),
                crossAxisSpacing: Spacings.medium,
                mainAxisSpacing: 4,
                crossAxisCount: 2,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(Spacings.small),
                          child: Image(
                            image: AssetImage('assets/images/gimg.png'),
                          ),
                        ),
                        SizedBox(
                          height: Spacings.medium,
                        ),
                        Text(
                          'Notebooks',
                          style: TextStyles.gridtextstyle,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KitchenPage()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(Spacings.small),
                            child: Image(
                              image: AssetImage('assets/images/kitchen.png'),
                            ),
                          ),
                          SizedBox(
                            height: Spacings.medium,
                          ),
                          Text(
                            'Kitchen',
                            style: TextStyles.gridtextstyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyProduct()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(Spacings.small),
                            child: Image(
                              image: AssetImage('assets/images/aceco.png'),
                            ),
                          ),
                          SizedBox(
                            height: Spacings.medium,
                          ),
                          Text(
                            'Electronics',
                            style: TextStyles.gridtextstyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MobileDeatils()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(Spacings.small),
                            child: Image(
                              image: AssetImage('assets/images/dron.png'),
                            ),
                          ),
                          SizedBox(
                            height: Spacings.medium,
                          ),
                          Text(
                            'Dorm',
                            style: TextStyles.gridtextstyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(Spacings.small),
                            child: Image(
                              image: AssetImage('assets/images/closet.png'),
                            ),
                          ),
                          SizedBox(
                            height: Spacings.medium,
                          ),
                          Text(
                            'Closet',
                            style: TextStyles.gridtextstyle,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
