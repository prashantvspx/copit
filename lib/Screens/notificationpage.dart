import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

class Notification_Page extends StatefulWidget {
  const Notification_Page({Key? key}) : super(key: key);

  @override
  _Notification_PageState createState() => _Notification_PageState();
}

class _Notification_PageState extends State<Notification_Page> {
  @override
  Widget build(BuildContext context) {
    int currentindex = 0;
    return AppScaffold(
        appbarname: "Notifications",
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: ColorsConst.listfirst,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/photo.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: Spacings.small),
                                child: Text(
                                  'James Dutton',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNowDisplay',
                                      fontSize: Spacings.smedium,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: Spacings.small,
                                    right: Spacings.small,
                                    bottom: Spacings.small),
                                child: Container(
                                  child: Text(
                                    '14 min ago',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNowDisplay',
                                        fontSize: Spacings.smedium,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Spacings.small),
                            child: Text(
                              'Good to meet you, Eugene!',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium, bottom: Spacings.small),
                            child: Text(
                              'Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual...',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: ColorsConst.secfirst,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/photo.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: Spacings.small),
                                child: Text(
                                  'James Dutton',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNowDisplay',
                                      fontSize: Spacings.smedium,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: Spacings.small,
                                    right: Spacings.small,
                                    bottom: Spacings.small),
                                child: Container(
                                  child: Text(
                                    '14 min ago',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNowDisplay',
                                        fontSize: Spacings.smedium,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Spacings.small),
                            child: Text(
                              'Good to meet you, Eugene!',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium, bottom: Spacings.small),
                            child: Text(
                              'Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual...',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: ColorsConst.thirdfirst,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/photo.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: Spacings.small),
                                child: Text(
                                  'James Dutton',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNowDisplay',
                                      fontSize: Spacings.smedium,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: Spacings.small,
                                    right: Spacings.small,
                                    bottom: Spacings.small),
                                child: Container(
                                  child: Text(
                                    '14 min ago',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNowDisplay',
                                        fontSize: Spacings.smedium,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Spacings.small),
                            child: Text(
                              'Good to meet you, Eugene!',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium, bottom: Spacings.small),
                            child: Text(
                              'Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual...',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: ColorsConst.foursirst,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/photo.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: Spacings.small),
                                child: Text(
                                  'James Dutton',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNowDisplay',
                                      fontSize: Spacings.smedium,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: Spacings.small,
                                    right: Spacings.small,
                                    bottom: Spacings.small),
                                child: Container(
                                  child: Text(
                                    '14 min ago',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNowDisplay',
                                        fontSize: Spacings.smedium,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Spacings.small),
                            child: Text(
                              'Good to meet you, Eugene!',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium, bottom: Spacings.small),
                            child: Text(
                              'Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual...',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: ColorsConst.listfirst,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/photo.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: Spacings.small),
                                child: Text(
                                  'James Dutton',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNowDisplay',
                                      fontSize: Spacings.smedium,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: Spacings.small,
                                    right: Spacings.small,
                                    bottom: Spacings.small),
                                child: Container(
                                  child: Text(
                                    '14 min ago',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNowDisplay',
                                        fontSize: Spacings.smedium,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Spacings.small),
                            child: Text(
                              'Good to meet you, Eugene!',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium, bottom: Spacings.small),
                            child: Text(
                              'Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual...',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: ColorsConst.listfirst,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/photo.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: Spacings.small),
                                child: Text(
                                  'James Dutton',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNowDisplay',
                                      fontSize: Spacings.smedium,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: Spacings.small,
                                    right: Spacings.small,
                                    bottom: Spacings.small),
                                child: Container(
                                  child: Text(
                                    '14 min ago',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNowDisplay',
                                        fontSize: Spacings.smedium,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Spacings.small),
                            child: Text(
                              'Good to meet you, Eugene!',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium, bottom: Spacings.small),
                            child: Text(
                              'Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual...',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: ColorsConst.listfirst,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/photo.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: Spacings.small),
                                child: Text(
                                  'James Dutton',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNowDisplay',
                                      fontSize: Spacings.smedium,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: Spacings.small,
                                    right: Spacings.small,
                                    bottom: Spacings.small),
                                child: Container(
                                  child: Text(
                                    '14 min ago',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNowDisplay',
                                        fontSize: Spacings.smedium,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Spacings.small),
                            child: Text(
                              'Good to meet you, Eugene!',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium, bottom: Spacings.small),
                            child: Text(
                              'Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual...',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: ColorsConst.listfirst,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/photo.png',
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: Spacings.small),
                                child: Text(
                                  'James Dutton',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'HelveticaNowDisplay',
                                      fontSize: Spacings.smedium,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: Spacings.small,
                                    right: Spacings.small,
                                    bottom: Spacings.small),
                                child: Container(
                                  child: Text(
                                    '14 min ago',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNowDisplay',
                                        fontSize: Spacings.smedium,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: Spacings.small),
                            child: Text(
                              'Good to meet you, Eugene!',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: Spacings.medium, bottom: Spacings.small),
                            child: Text(
                              'Lorem ipsum is a placeholder text commonly \n used to demonstrate the visual...',
                              style: TextStyle(
                                  fontFamily: 'HelveticaNowDisplay',
                                  fontSize: Spacings.smedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        bottembar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: ColorsConst.PrimryblackColor,
          selectedItemColor: ColorsConst.PrimryColor,
          type: BottomNavigationBarType.fixed,

          currentIndex:
              currentindex, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: currentindex == 0
                  ? ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          ColorsConst.PrimryColor, BlendMode.modulate),
                      child: Image(
                        image: AssetImage('assets/images/home.png'),
                      ),
                    )
                  : Image(
                      image: AssetImage('assets/images/home.png'),
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: currentindex == 1
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            ColorsConst.PrimryColor, BlendMode.modulate),
                        child: Image(
                          image: AssetImage('assets/images/chat.png'),
                        ),
                      )
                    : Image(
                        image: AssetImage('assets/images/chat.png'),
                      ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: currentindex == 2
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            ColorsConst.PrimryColor, BlendMode.modulate),
                        child: Image(
                          image: AssetImage('assets/images/cam.png'),
                        ),
                      )
                    : Image(
                        image: AssetImage('assets/images/cam.png'),
                      ),
                label: 'Camera'),
            BottomNavigationBarItem(
                icon: currentindex == 3
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            ColorsConst.PrimryColor, BlendMode.modulate),
                        child: Image(
                          image: AssetImage('assets/images/profile.png'),
                        ),
                      )
                    : Image(
                        image: AssetImage('assets/images/profile.png'),
                      ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: currentindex == 4
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            ColorsConst.PrimryColor, BlendMode.modulate),
                        child: Image(
                          image: AssetImage('assets/images/cart.png'),
                        ),
                      )
                    : Image(
                        image: AssetImage('assets/images/cart.png'),
                      ),
                label: 'Cart'),
          ],
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
        ));
  }
}
