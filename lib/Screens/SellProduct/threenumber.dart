import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/AllMenus/customappbar.dart';
import 'package:copit/Colors.dart';
import 'package:copit/DrawerFiles/sellproduct.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class Last_Step_Page extends StatefulWidget {
  final VoidCallback Addproduct;
  final VoidCallback Addprevproduct;
  const Last_Step_Page(
      {Key? key, required this.Addproduct, required this.Addprevproduct})
      : super(key: key);

  @override
  _Last_Step_PageState createState() => _Last_Step_PageState();
}

class _Last_Step_PageState extends State<Last_Step_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: TextStyles.buildappbar(title: 'Sell Product'),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Text(
            'Price',
            style: TextStyles.sellproduct_price,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: Spacings.xxmedium,
              left: Spacings.large,
              right: Spacings.large),
          child: CustomTextfeild(
            hintText: "\$",
          ),
        ),
        SizedBox(
          height: Spacings.xxmedium,
        ),
        Container(
          padding: EdgeInsets.only(top: Spacings.xxxxxLarge),
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
                  widget.Addprevproduct();
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => SellProductPage()));
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
                  widget.Addproduct();
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Last_Step_Page()));
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
