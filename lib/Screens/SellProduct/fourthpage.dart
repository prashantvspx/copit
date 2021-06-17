import 'package:copit/Colors.dart';
import 'package:copit/DrawerFiles/sellproduct.dart';
import 'package:copit/Screens/SellProduct/firstpage.dart';
import 'package:copit/Screens/SellProduct/seceondpage.dart';
import 'package:copit/Screens/SellProduct/threenumber.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class TimeLine_AddProduct extends StatefulWidget {
  const TimeLine_AddProduct({Key? key}) : super(key: key);

  @override
  _TimeLine_AddProductState createState() => _TimeLine_AddProductState();
}

class _TimeLine_AddProductState extends State<TimeLine_AddProduct> {
  int currentpage = 0;
  bool step1 = false;
  bool step2 = false;
  bool step3 = false;
  bool step4 = false;
  bool step1Complete = false;
  bool step2Complete = false;
  bool step3Complete = false;
  bool step4Complete = false;
  PageController pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    Size sizedata = MediaQuery.of(context).size;
    return Scaffold(
      appBar: TextStyles.buildappbar(title: 'Add Product'),
      body: Container(
        padding: EdgeInsets.only(top: Spacings.xxLarge),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsConst.btnbgColor,
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.blue),
                    ),
                  ),
                  child: step1Complete
                      ? Icon(
                          Icons.done,
                          color: ColorsConst.White,
                        )
                      : Offstage(),
                ),
                SizedBox(
                  width: sizedata.width / 5,
                  child: Divider(
                    color: ColorsConst.btnbgColor,
                    thickness: 2.0,
                    // height: 2.0,
                    // endIndent: 20.0,
                    // indent: 20.0,
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: step2 ? ColorsConst.btnbgColor : Colors.white,
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: step2Complete
                      ? Icon(
                          Icons.done,
                          color: ColorsConst.White,
                        )
                      : Offstage(),
                ),
                SizedBox(
                  width: sizedata.width / 5,
                  child: Divider(
                    color: step2 ? ColorsConst.btnbgColor : Colors.grey,
                    thickness: 2.0,
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: step3 ? ColorsConst.btnbgColor : Colors.white,
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: step3Complete
                      ? Icon(
                          Icons.done,
                          color: ColorsConst.White,
                        )
                      : Offstage(),
                ),
                SizedBox(
                  width: sizedata.width / 5,
                  child: Divider(
                    color: step3 ? ColorsConst.btnbgColor : Colors.grey,
                    thickness: 2.0,
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: step4 ? ColorsConst.btnbgColor : Colors.white,
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: pagecontroller,
                children: [
                  FirstPage_Sell_Product(
                    firstpage: () {
                      setState(() {
                        step2 = true;
                        step1Complete = true;

                        pagecontroller
                            .jumpToPage(pagecontroller.page!.toInt() + 1);
                      });
                    },
                  ),
                  SellProductPage(
                    Firstpage: () {
                      step2 = false;
                      step3 = false;
                      step1Complete = false;
                      pagecontroller
                          .jumpToPage(pagecontroller.page!.toInt() - 1);
                      setState(() {});
                    },
                    Seceondpage: () {
                      setState(() {
                        step3 = true;
                        step2Complete = true;
                        pagecontroller
                            .jumpToPage(pagecontroller.page!.toInt() + 1);
                      });
                    },
                  ),
                  Add_Product_Sec_Page(
                    SecNextpage: () {
                      setState(() {
                        step4 = true;
                        // currentStep = 3;
                        step3Complete = true;
                        pagecontroller
                            .jumpToPage(pagecontroller.page!.toInt() + 1);
                      });
                    },
                    SecPrepage: () {
                      setState(() {
                        step4 = false;
                        step3 = false;
                        step2Complete = false;
                        //  currentStep = 1;
                        pagecontroller
                            .jumpToPage(pagecontroller.page!.toInt() - 1);
                      });
                    },
                  ),
                  Last_Step_Page(
                    Addproduct: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    Addprevproduct: () {
                      setState(() {
                        step4 = false;
                        step3Complete = false;
                        //  currentStep = 2;
                        pagecontroller
                            .jumpToPage(pagecontroller.page!.toInt() - 1);
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
