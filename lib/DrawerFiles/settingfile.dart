import 'package:copit/AllMenus/app_card.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
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
        ));
  }
}
