import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  final controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appbarname: 'My product',
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: Spacings.medium),
              color: ColorsConst.graycolor,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Kitchen",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: Spacings.xxmedium,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ColorsConst.borderbgColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: TextStyles.headingBigBlack,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 160.0,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildCard(),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: Spacings.large, bottom: Spacings.large),
              child: Container(
                color: ColorsConst.graycolor,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Electronics",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: Spacings.xxmedium,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ColorsConst.borderbgColor,
                          ),
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyles.headingBigBlack,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 160.0,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildCard(),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Spacings.large),
              child: Container(
                color: ColorsConst.graycolor,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Kitchen",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: Spacings.xxmedium,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ColorsConst.borderbgColor,
                          ),
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyles.headingBigBlack,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 160.0,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildCard(),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Spacings.large),
              child: Container(
                color: ColorsConst.graycolor,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Kitchen",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: Spacings.xxmedium,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ColorsConst.borderbgColor,
                          ),
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyles.headingBigBlack,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 160.0,
                    child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: buildCard(),
                            )),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );

    // child: Container(
    //   child: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         Container(
    //           color: ColorsConst.boxBackgroundColor,
    //           child: Column(
    //             children: [
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.all(12.0),
    //                     child: Text(
    //                       "Kitchen",
    //                       style: TextStyle(
    //                         fontFamily: 'poppins',
    //                         fontSize: Spacings.xxmedium,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         primary: ColorsConst.borderbgColor,
    //                       ),
    //                       onPressed: () {},
    //                       child: Text(
    //                         'See all',
    //                         style: TextStyles.headingBigBlack,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Container(
    //                   height: 200,
    //                   width: 400,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(0.0),
    //                     child: ListView(
    //                       scrollDirection: Axis.horizontal,
    //                       physics: ClampingScrollPhysics(),
    //                       shrinkWrap: true,
    //                       children: <Widget>[
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                           height: 150,
    //                                           width: 80,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     ),
    //                                     SmoothPageIndicator(
    //                                       controller: controller,
    //                                       count: 3,
    //                                       effect: SlideEffect(
    //                                           dotWidth: 10.0,
    //                                           dotHeight: 10.0,
    //                                           dotColor:
    //                                               ColorsConst.neioncolor,
    //                                           paintStyle:
    //                                               PaintingStyle.stroke,
    //                                           strokeWidth: 2,
    //                                           activeDotColor:
    //                                               Colors.indigo),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                           height: 100,
    //                                           width: 80,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(
    //                                           // enlargeCenterPage: true,
    //                                           // aspectRatio: 2.0
    //                                           //  scrollDirection: Axis.horizontal,
    //                                           ),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         Container(
    //           margin: EdgeInsets.only(top: Spacings.large),
    //           color: ColorsConst.boxBackgroundColor,
    //           child: Column(
    //             children: [
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.all(12.0),
    //                     child: Text(
    //                       "Kitchen",
    //                       style: TextStyle(
    //                         fontFamily: 'poppins',
    //                         fontSize: Spacings.xxmedium,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         primary: ColorsConst.borderbgColor,
    //                       ),
    //                       onPressed: () {},
    //                       child: Text(
    //                         'See all',
    //                         style: TextStyles.headingBigBlack,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Container(
    //                   height: 200,
    //                   width: 400,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(0.0),
    //                     child: ListView(
    //                       scrollDirection: Axis.horizontal,
    //                       physics: ClampingScrollPhysics(),
    //                       shrinkWrap: true,
    //                       children: <Widget>[
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                           height: 150,
    //                                           width: 80,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     ),
    //                                     SmoothPageIndicator(
    //                                       controller: controller,
    //                                       count: 3,
    //                                       effect: SlideEffect(
    //                                           dotWidth: 10.0,
    //                                           dotHeight: 10.0,
    //                                           dotColor:
    //                                               ColorsConst.neioncolor,
    //                                           paintStyle:
    //                                               PaintingStyle.stroke,
    //                                           strokeWidth: 2,
    //                                           activeDotColor:
    //                                               Colors.indigo),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                           height: 100,
    //                                           width: 80,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(
    //                                           // enlargeCenterPage: true,
    //                                           // aspectRatio: 2.0
    //                                           //  scrollDirection: Axis.horizontal,
    //                                           ),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //         Container(
    //           margin: EdgeInsets.only(top: Spacings.large),
    //           color: ColorsConst.boxBackgroundColor,
    //           child: Column(
    //             children: [
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.all(12.0),
    //                     child: Text(
    //                       "Kitchen",
    //                       style: TextStyle(
    //                         fontFamily: 'poppins',
    //                         fontSize: Spacings.xxmedium,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: ElevatedButton(
    //                       style: ElevatedButton.styleFrom(
    //                         primary: ColorsConst.borderbgColor,
    //                       ),
    //                       onPressed: () {},
    //                       child: Text(
    //                         'See all',
    //                         style: TextStyles.headingBigBlack,
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Container(
    //                   height: 200,
    //                   width: 400,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(0.0),
    //                     child: ListView(
    //                       scrollDirection: Axis.horizontal,
    //                       physics: ClampingScrollPhysics(),
    //                       shrinkWrap: true,
    //                       children: <Widget>[
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                           height: 150,
    //                                           width: 80,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     ),
    //                                     SmoothPageIndicator(
    //                                       controller: controller,
    //                                       count: 3,
    //                                       effect: SlideEffect(
    //                                           dotWidth: 10.0,
    //                                           dotHeight: 10.0,
    //                                           dotColor:
    //                                               ColorsConst.neioncolor,
    //                                           paintStyle:
    //                                               PaintingStyle.stroke,
    //                                           strokeWidth: 2,
    //                                           activeDotColor:
    //                                               Colors.indigo),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                           height: 100,
    //                                           width: 80,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: const EdgeInsets.all(8.0),
    //                           child: Container(
    //                             child: Card(
    //                               child: Container(
    //                                 child: Column(
    //                                   children: [
    //                                     CarouselSlider(
    //                                       items: [
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/noti.png',
    //                                           fit: BoxFit.contain,
    //                                         ),
    //                                         Image.asset(
    //                                           'assets/images/photo.png',
    //                                           fit: BoxFit.contain,
    //                                         )
    //                                       ],
    //                                       options: CarouselOptions(
    //                                           // enlargeCenterPage: true,
    //                                           // aspectRatio: 2.0
    //                                           //  scrollDirection: Axis.horizontal,
    //                                           ),
    //                                     )
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                             height: 200,
    //                             width: 150,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  }

  Card buildCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: Spacings.medium),
                width: 150,
                child: CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/images/gimg.png',
                    ),
                    Image.asset(
                      'assets/images/gimg.png',
                      alignment: Alignment.center,
                    ),
                    Image.asset(
                      'assets/images/gimg.png',
                    ),
                  ],
                  options: CarouselOptions(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/dil.png',
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_disabled_outlined,
                size: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: Spacings.small),
                child: Text(
                  'Aprliment HAll',
                  style: TextStyle(color: Colors.black, fontFamily: 'poppins'),
                ),
              )
            ],
          ),
          Text(
            'Aprliment HAll',
            style: TextStyle(color: Colors.deepOrange, fontFamily: 'poppins'),
          )
        ],
      ),
    );
  }
}
