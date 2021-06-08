import 'package:copit/AllMenus/customappbar.dart';
import 'package:copit/AllMenus/drawerfile.dart';
import 'package:copit/Colors.dart';
import 'package:copit/HomePageScreen/cameraspages.dart';
import 'package:copit/HomePageScreen/cartspages.dart';
import 'package:copit/HomePageScreen/chatpages.dart';
import 'package:copit/HomePageScreen/homespages.dart';
import 'package:copit/HomePageScreen/profilespages.dart';
import 'package:copit/Screens/notificationpage.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

class HomePage_drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomePages(),
    );
  }
}

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int currentindex = 0;
  late String title;

  List<Widget> _widgetOptions = [
    MainHomePage(),
    Chatpage(),
    // HelpDaskPage(),
    CameraClass(),
    ProfileClass(),
    Cartpage(),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    switch (currentindex) {
      case 0:
        title = "Home";
        break;
      case 1:
        title = "Chat";
        break;
      case 2:
        title = "Camera";
        break;
      case 3:
        title = "Profile";
        break;
      case 4:
        title = "Cart";
        break;
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: currentindex == 0 || currentindex == 1
          ? buildAppBar(title)
          : PreferredSize(
              child: AppBarCustom(
                hintText: title,
              ),
              preferredSize: Size.fromHeight(Spacings.xxxxLarge)),
      drawer: DrawerFile(),
      body: _widgetOptions[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: ColorsConst.PrimryblackColor,
        selectedItemColor: ColorsConst.PrimryColor,
        type: BottomNavigationBarType.fixed,

        currentIndex: currentindex, // this will be set when a new tab is tapped
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
      ),
    );
  }

  AppBar buildAppBar(String title) {
    return AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leading: GestureDetector(
          onTap: () => _scaffoldKey.currentState?.openDrawer(),
          child: ImageIcon(
            AssetImage("assets/images/menu.png"),
            size: Spacings.large,
            color: ColorsConst.PrimryblackColor,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: ColorsConst.PrimryblackColor),
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Notification_Page()));
              },
              child: ImageIcon(
                AssetImage("assets/images/noti.png"),
                size: Spacings.large,
                color: ColorsConst.PrimryblackColor,
              ),
            ),
          ),
        ]);
  }
}
