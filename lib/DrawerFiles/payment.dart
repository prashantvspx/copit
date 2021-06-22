import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/Screens/homepage.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/customstring.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyPaymentpage(),
    );
  }
}

class MyPaymentpage extends StatefulWidget {
  @override
  _MyPaymentpageState createState() => _MyPaymentpageState();
}

class _MyPaymentpageState extends State<MyPaymentpage> {
  bool isSwitched = false;
  var textvalue = 'Switch is OFF';

  void toggleswitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textvalue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textvalue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    int currentindex = 0;
    return AppScaffold(
      appbarname: "Payment",
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: Spacings.xmedium,
                right: Spacings.xmedium,
                top: Spacings.xLarge),
            child: Stack(children: [
              Container(
                child: Image.asset('assets/images/payback.png'),
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsConst.yellowcolor),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: Spacings.large,
                            left: Spacings.large,
                            right: Spacings.large),
                        child: Text(
                          CustomsString.amountpay,
                          style: TextStyles.paytext,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: Spacings.large,
                            left: Spacings.large,
                            right: Spacings.large),
                        child: Text(
                          CustomsString.amounts + "74",
                          style: TextStyle(
                              color: ColorsConst.White,
                              fontFamily: 'HelveticaNowDisplay',
                              fontWeight: FontWeight.bold,
                              fontSize: Spacings.large),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(
                        top: Spacings.small,
                        left: Spacings.xmedium,
                        right: Spacings.xmedium),
                    child: Text(
                      CustomsString.txtpay,
                      style: TextStyles.pertext,
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              )
            ]),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: Spacings.xLarge),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: Spacings.xmedium),
                    child: Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorsConst.bclight),
                          color: ColorsConst.cardcolor),
                      child: Padding(
                        padding: const EdgeInsets.all(Spacings.xmedium),
                        child: Text("Bank Card"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: Spacings.xmedium),
                    child: Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorsConst.bclight),
                          color: ColorsConst.cardcolor),
                      child: Padding(
                        padding: const EdgeInsets.all(Spacings.xmedium),
                        child: Image.asset('assets/images/visa.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: Spacings.xmedium),
                    child: Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorsConst.bclight),
                          color: ColorsConst.cardcolor),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/images/mcard.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Spacings.xLarge),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: Spacings.xmedium, right: Spacings.xmedium),
                child: Card(
                  color: ColorsConst.graycolor,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: Spacings.xmedium, right: Spacings.xmedium),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(top: Spacings.large),
                          child: Text(
                            CustomsString.CardDetail,
                            style: TextStyles.gridtextstyle,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: Spacings.large),
                            child: CustomTextfeild(
                              hintText: 'Card Number',
                            )),
                        Row(children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: Spacings.xxmedium,
                                right: Spacings.medium,
                              ),
                              child: CustomTextfeild(
                                hintText: CustomsString.ExpiryDate,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: Spacings.xxmedium,
                                  left: Spacings.medium),
                              child: CustomTextfeild(
                                hintText: CustomsString.CVV,
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                            padding: EdgeInsets.only(
                                top: Spacings.large, bottom: Spacings.xlarge),
                            child: CustomTextfeild(
                              hintText: CustomsString.NameonCard,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(CustomsString.Savedetails,
                style: TextStyles.AllheadingText),
            trailing: Switch(
              onChanged: toggleswitch,
              value: isSwitched,
              activeColor: ColorsConst.yellowcolor,
              activeTrackColor: ColorsConst.yellowcolor,
              inactiveThumbColor: ColorsConst.White,
              inactiveTrackColor: ColorsConst.yellowcolor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: Spacings.xLarge, bottom: Spacings.small),
            child: Container(
              color: ColorsConst.White,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    'Total Pay',
                    style: TextStyles.AllheadingText,
                  ),
                  subtitle: Text(
                    CustomsString.amounts + "74.00",
                    style: TextStyles.AamountText,
                  ),
                  trailing: MaterialButton(
                    color: ColorsConst.btnbgColor,
                    height: Spacings.xxxxLarge,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                contentPadding: EdgeInsets.all(8),
                                content: Container(
                                  height:
                                      160, //give temp size when app live or api call that timer changes
                                  width: 200,

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: ColorsConst.graycolor),
                                              child: Icon(Icons.close)),
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor:
                                            ColorsConst.edittxtbgColor,
                                        radius: 25,
                                        child: Icon(
                                          Icons.done,
                                          color: ColorsConst.PrimryColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Text(
                                          'Order Placed Successful  ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: Spacings.medium),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: Spacings.small),
                          child: Text(
                            'Payment',
                            style: TextStyle(
                                fontSize: Spacings.xxmedium,
                                color: ColorsConst.White,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: Spacings.small),
                          child: Image.asset(
                            'assets/images/righta.png',
                            color: ColorsConst.White,
                            height: Spacings.xmedium,
                          ),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Spacings.large),
                    ),
                    minWidth: MediaQuery.of(context).size.width / 2.3,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
