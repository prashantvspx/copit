import 'package:copit/AllMenus/app_card.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SettingFile(),
    );
  }
}

class SettingFile extends StatefulWidget {
  @override
  _SettingFileState createState() => _SettingFileState();
}

class _SettingFileState extends State<SettingFile> {
  int currentindex = 0;
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appbarname: 'Setting',
        body: Column(
          children: [
            AppCard(
                names: 'Show Notifications',
                images: "assets/images/bell.png",
                leftimages: Switch(
                  onChanged: toggleSwitch,
                  value: isSwitched,
                  activeColor: ColorsConst.PrimryColor,
                  activeTrackColor: ColorsConst.PrimryColor,
                  inactiveThumbColor: ColorsConst.White,
                  inactiveTrackColor: ColorsConst.PrimryColor,
                )),
            AppCard(
              names: 'Change Password',
              images: "assets/images/lock.png",
            ),
            AppCard(
              names: 'Help Center',
              images: "assets/images/help.png",
            ),
            AppCard(
              names: 'About Us',
              images: "assets/images/faq.png",
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
