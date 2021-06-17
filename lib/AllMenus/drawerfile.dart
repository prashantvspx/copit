import 'package:copit/Colors.dart';
import 'package:copit/DrawerFiles/dashboardpage.dart';
import 'package:copit/DrawerFiles/helpfile.dart';
import 'package:copit/DrawerFiles/myproduct.dart';
import 'package:copit/DrawerFiles/payment.dart';
import 'package:copit/DrawerFiles/sellproduct.dart';
import 'package:copit/DrawerFiles/settingfile.dart';
import 'package:copit/Screens/SellProduct/firstpage.dart';
import 'package:copit/Screens/SellProduct/fourthpage.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/material.dart';

class DrawerFile extends StatelessWidget {
  const DrawerFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Column(
              children: [
                DrawerHeader(
                    child: ListTile(
                  trailing: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Spacings.small),
                        border: Border.all(color: ColorsConst.borderbgColor)),
                    padding: EdgeInsets.all(Spacings.small),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/close.png',
                      ),
                    ),
                  ),
                  title: Text(
                    'Maria Bond',
                    style: TextStyle(color: ColorsConst.PrimryblackColor),
                  ),
                  subtitle: Text(
                    'maria97@gmail.com',
                    style: TextStyle(color: ColorsConst.PrimryblackColor),
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(Spacings.small),
                    child: Image.asset('assets/images/photo.png'),
                  ),
                ))
                // UserAccountsDrawerHeader(
                //   accountName: Text("Maria Bond"),
                //   accountEmail: Text("maria97@gmail.com"),
                //   currentAccountPicture: CircleAvatar(
                //     child: Text(
                //       "A",
                //       style: TextStyle(fontSize: 40.0),
                //     ),
                //   ),
                // ),
              ],
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Spacings.small),
                    border: Border.all(color: ColorsConst.borderbgColor)),
                padding: EdgeInsets.all(Spacings.small),
                child: Image.asset('assets/images/dashboard.png'),
              ),
              title: Text(
                "Dashboard",
                style: TextStyle(
                    color: ColorsConst.PrimryColor,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DashboardPage()));
              },
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: ColorsConst.borderbgColor)),
                padding: EdgeInsets.all(Spacings.small),
                child: Image.asset('assets/images/sellproduct.png'),
              ),
              title: Text(
                "Sell Products",
                style: TextStyle(
                    color: ColorsConst.PrimryblackColor,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TimeLine_AddProduct()));
              },
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: ColorsConst.borderbgColor)),
                padding: EdgeInsets.all(Spacings.small),
                child: Image.asset('assets/images/product.png'),
              ),
              title: Text(
                "My Products",
                style: TextStyle(
                    color: ColorsConst.PrimryblackColor,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyProduct()));
              },
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: ColorsConst.borderbgColor)),
                padding: EdgeInsets.all(Spacings.small),
                child: Image.asset('assets/images/payment.png'),
              ),
              title: Text(
                "Payments",
                style: TextStyle(
                    color: ColorsConst.PrimryblackColor,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyPaymentpage()));
              },
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: ColorsConst.borderbgColor)),
                padding: EdgeInsets.all(Spacings.small),
                child: Image.asset('assets/images/setting.png'),
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                    color: ColorsConst.PrimryblackColor,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingFile()));
              },
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: ColorsConst.borderbgColor)),
                padding: EdgeInsets.all(Spacings.small),
                child: Image.asset('assets/images/help.png'),
              ),
              title: Text(
                "Help",
                style: TextStyle(
                    color: ColorsConst.PrimryblackColor,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HelpDaskPage()));
              },
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: ColorsConst.borderbgColor)),
                padding: EdgeInsets.all(Spacings.small),
                child: Image.asset('assets/images/faq.png'),
              ),
              title: Text(
                "FAQ’s",
                style: TextStyle(
                    color: ColorsConst.PrimryblackColor,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.only(top: Spacings.xxLarge),
              child: Align(
                alignment: Alignment.centerLeft,
                child: MaterialButton(
                  height: Spacings.xxxxLarge,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/logout.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: Spacings.small),
                        child: Text(
                          'LOGOUT',
                          style: TextStyle(
                              fontSize: Spacings.medium,
                              color: ColorsConst.btnbgColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Spacings.large),
                    side: BorderSide(color: ColorsConst.btnbgColor, width: 3),
                  ),
                  minWidth: MediaQuery.of(context).size.width / 2.3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
