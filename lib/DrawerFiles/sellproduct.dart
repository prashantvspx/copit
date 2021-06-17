import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/Screens/SellProduct/firstpage.dart';
import 'package:copit/Screens/SellProduct/seceondpage.dart';
import 'package:copit/Screens/SignIn.dart';
import 'package:copit/Screens/homepage.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class SellProductPage extends StatefulWidget {
  final VoidCallback Seceondpage;
  final VoidCallback Firstpage;

  const SellProductPage(
      {Key? key, required this.Seceondpage, required this.Firstpage})
      : super(key: key);
  @override
  _SellProductPageState createState() => _SellProductPageState();
}

class _SellProductPageState extends State<SellProductPage> {
  bool checkdata = false;
  List<String> Checkbox_list = [
    'Glades Park Tower',
    'Heritage Park Tower',
    'Parliament Hall',
    'Indian River Towers',
    'Innovation Village North Apartments',
    'Innovation Village South Apartments',
    'University Village Apartments',
    'Atlantic Park Towers'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: TextStyles.buildappbar(title: 'Sell Product'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: Spacings.slarge),
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: Spacings.xxmedium, top: Spacings.xxxxLarge),
                  child: Text(
                    'Which building do you live in?',
                    style: TextStyle(
                        fontFamily: 'HelveticaNowDisplay',
                        color: ColorsConst.fontcolorblck,
                        fontWeight: FontWeight.normal,
                        fontSize: Spacings.large),
                  ),
                ),
                ListView.builder(
                    padding: EdgeInsets.only(
                        left: Spacings.large, top: Spacings.smedium),
                    shrinkWrap: true,
                    itemCount: Checkbox_list.length,
                    itemBuilder: (context, index) {
                      return buildRow(Checkbox_list[index].toString());
                    }),
                Container(
                  padding: EdgeInsets.only(top: Spacings.xxmedium),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonPrimary(
                        borders: true,
                        colors: ColorsConst.White,
                        enabled: true,
                        width: MediaQuery.of(context).size.width / 2.5,
                        leading: Image.asset(
                          'assets/images/rightback.png',
                          color: ColorsConst.PrimryblackColor,
                        ),
                        texts: TextStyles.ButtionPrimaryStyletwo,
                        text: 'Back',
                        onTap: () {
                          widget.Firstpage();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePages()));
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ButtonPrimary(
                        enabled: true,
                        width: MediaQuery.of(context).size.width / 2.5,
                        text: 'Next',
                        trailing: ImageAssets.backleftLogos(),
                        onTap: () {
                          widget.Seceondpage();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             Add_Product_Sec_Page()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildRow(String title) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          side: BorderSide(width: 0.8),
          value: checkdata,
          onChanged: (a) {
            checkdata = a!;
            setState(() {});
          },
        ),
        Expanded(
            child: Text(
          title,
          style: TextStyles.sellproduct_checkbox,
        )),
      ],
    );
  }
}
