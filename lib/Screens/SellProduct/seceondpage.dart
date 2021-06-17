import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/DrawerFiles/sellproduct.dart';
import 'package:copit/Screens/SellProduct/firstpage.dart';
import 'package:copit/Screens/SellProduct/threenumber.dart';
import 'package:copit/Screens/homepage.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class Add_Product_Sec_Page extends StatefulWidget {
  final VoidCallback SecNextpage;
  final VoidCallback SecPrepage;
  const Add_Product_Sec_Page(
      {Key? key, required this.SecNextpage, required this.SecPrepage})
      : super(key: key);

  @override
  _Add_Product_Sec_PageState createState() => _Add_Product_Sec_PageState();
}

class _Add_Product_Sec_PageState extends State<Add_Product_Sec_Page> {
  bool Selected = false;
  bool Selectedone = false;
  bool Selectedtwo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: TextStyles.buildappbar(title: 'Sell Product'),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: Spacings.xxxxLarge, left: Spacings.smedium),
              child: Text(
                'Condtion',
                style: TextStyles.addproductText,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Spacings.xxLarge),
              child: Row(
                children: [
                  ButtonPrimary(
                    borders: true,
                    colors: Selected
                        ? ColorsConst.PrimryblackColor
                        : ColorsConst.White,
                    enabled: true,
                    width: MediaQuery.of(context).size.width / 3.5,
                    leading: Selected
                        ? Image.asset(
                            'assets/images/good.png',
                            color: ColorsConst.White,
                          )
                        : Image.asset(
                            'assets/images/good.png',
                            color: ColorsConst.PrimryblackColor,
                          ),
                    texts: Selected
                        ? TextStyles.ButtionPrimaryStyle
                        : TextStyles.ButtionPrimaryStyletwo,
                    text: 'Good',
                    onTap: () {
                      setState(() {
                        Selected = !Selected;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ButtonPrimary(
                    borders: true,
                    colors: Selectedone
                        ? ColorsConst.PrimryblackColor
                        : ColorsConst.White,
                    enabled: true,
                    width: MediaQuery.of(context).size.width / 2.9,
                    leading: Selectedone
                        ? Image.asset(
                            'assets/images/vgood.png',
                            color: ColorsConst.White,
                          )
                        : Image.asset(
                            'assets/images/vgood.png',
                            color: ColorsConst.PrimryblackColor,
                          ),
                    texts: Selectedone
                        ? TextStyles.ButtionPrimaryStyle
                        : TextStyles.ButtionPrimaryStyletwo,
                    text: 'Very Good',
                    onTap: () {
                      setState(() {
                        Selectedone = !Selectedone;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ButtonPrimary(
                    borders: true,
                    colors: Selectedtwo
                        ? ColorsConst.PrimryblackColor
                        : ColorsConst.White,
                    enabled: true,
                    width: MediaQuery.of(context).size.width / 3.1,
                    leading: Selectedtwo
                        ? Image.asset(
                            'assets/images/avg.png',
                            color: ColorsConst.White,
                          )
                        : Image.asset(
                            'assets/images/avg.png',
                            color: ColorsConst.PrimryblackColor,
                          ),
                    texts: Selectedtwo
                        ? TextStyles.ButtionPrimaryStyle
                        : TextStyles.ButtionPrimaryStyletwo,
                    text: 'Average',
                    onTap: () {
                      setState(() {
                        Selectedtwo = !Selectedtwo;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
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
                      widget.SecPrepage();
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Last_Step_Page()));
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
                      widget.SecNextpage();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
