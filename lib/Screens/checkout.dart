import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class CheckOut_Page extends StatefulWidget {
  const CheckOut_Page({Key? key}) : super(key: key);

  @override
  _CheckOut_PageState createState() => _CheckOut_PageState();
}

class _CheckOut_PageState extends State<CheckOut_Page> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appbarname: 'Checkout',
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Colors.white,
                    border: Border.all(color: Colors.white)),
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        "assets/images/gimg.png",
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30.0, top: 30.0, bottom: 5),
                            child: Text(
                              "HeadPhones",
                              style: TextStyles.product_price,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, top: 5.0),
                            child: Text(
                              "US\$150.00",
                              style: TextStyles.Header_File_m_size,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0, top: 10),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.delete,
                            size: 26,
                            color: Colors.grey,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Text(
                "Order Info",
                style: TextStyles.Header_File_m_size,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Spacings.xxmedium),
                      color: ColorsConst.White,
                      border: Border.all(color: Colors.white)),
                  height: MediaQuery.of(context).size.height / 2.6,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Price", style: TextStyles.checkout_text),
                            Text("\$150.00", style: TextStyles.checkout_text),
                          ],
                        ),
                      ),
                      Divider(
                        color: ColorsConst.borderbgColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment method",
                                style: TextStyles.checkout_text),
                            Text("Bank of America",
                                style: TextStyles.checkout_text),
                          ],
                        ),
                      ),
                      Divider(
                        color: ColorsConst.borderbgColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Purchase", style: TextStyle(fontSize: 16)),
                            Text("\$0.99", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                      Divider(
                        color: ColorsConst.borderbgColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Cop it fee", style: TextStyles.checkout_text),
                            Text("\$0.99", style: TextStyles.checkout_text),
                          ],
                        ),
                      ),
                      Divider(
                        color: ColorsConst.borderbgColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("\$151.00",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Container(
                // width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                    color: ColorsConst.btnbgColor,
                    border: Border.all(color: Colors.white)),

                //  width: 250.0,
                height: 50,
                //  height: 50.0,
                child: Center(
                  child: Text(
                    "CHECKOUT(US\$160.00)",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
