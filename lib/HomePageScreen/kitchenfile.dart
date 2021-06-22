import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class KitchenPage extends StatefulWidget {
  const KitchenPage({Key? key}) : super(key: key);

  @override
  _KitchenPageState createState() => _KitchenPageState();
}

class _KitchenPageState extends State<KitchenPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appbarname: 'Order Deatils',
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(Spacings.medium),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.height / 2,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Carousel(
                          images: [
                            Image(
                              image: AssetImage(
                                "assets/images/kitchen.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                            Image(
                              image: AssetImage(
                                "assets/images/kitchen.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                            Image(
                              image: AssetImage(
                                "assets/images/kitchen.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                            Image(
                              image: AssetImage(
                                "assets/images/kitchen.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ],
                          // for three dots
                          dotBgColor: Colors.white,
                          dotColor: Colors.grey,
                          dotIncreasedColor: Colors.green,
                          dotIncreaseSize: 1.2,
                          autoplay: false,
                        ),
                      ),
                      Positioned(
                        right: 20,
                        bottom: 50,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Icon(
                              Icons.favorite_border,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: Spacings.large),
              child: Row(
                children: [
                  Text(
                    'Category: ',
                    style: TextStyles.product_cat,
                  ),
                  Text(
                    'kitchen: ',
                    style: TextStyles.product_cat,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: Spacings.medium),
              child: Text(
                'Old Style Pressure Cooker Mushroom Cultivation',
                style: TextStyles.Header_File,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: Spacings.small, top: Spacings.xxmedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Order Id   ", style: TextStyles.orders_txt),
                      Text("1184512", style: TextStyles.orders_txt),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: Spacings.medium)),
                  Text("US \$ 150.00", style: TextStyles.orders_txt),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: MaterialButton(
                  color: ColorsConst.greencolor,
                  height: MediaQuery.of(context).size.height / 16,
                  minWidth: MediaQuery.of(context).size.width / 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: const Text('Help',
                      style: TextStyle(
                          color: Colors.white, fontSize: Spacings.xmedium)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: Spacings.xxmedium,
                  right: Spacings.xxmedium,
                  top: Spacings.xxmedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery address :",
                    style: TextStyles.sellproduct_checkbox,
                  ),
                  SizedBox(
                    height: Spacings.xmedium,
                  ),
                  Text(
                    "307 N University Bivd Mobile AL365255 United State",
                    style: TextStyles.orders_txt,
                  ),
                  Padding(padding: EdgeInsets.only(top: Spacings.large)),
                  MaterialButton(
                    color: ColorsConst.btnbgColor,
                    height: MediaQuery.of(context).size.height / 18,
                    minWidth: MediaQuery.of(context).size.width / 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    child: const Text('Change Delivery Address',
                        style: TextStyle(
                            color: Colors.white, fontSize: Spacings.xmedium)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: Spacings.xxmedium,
                  top: Spacings.xxmedium,
                  right: Spacings.xxmedium),
              child: Row(
                children: [
                  Text("Updates Sent To :", style: TextStyles.cardstylebx),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Spacings.medium,
                        ),
                        color: ColorsConst.prod_box_bc,
                        border: Border.all(color: Colors.white)),
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 20,
                    child: Center(
                      child: Text(
                        "maria97@gmail.com",
                        style: TextStyles.product_box_txt,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: ColorsConst.card_text_color,
                        border: Border.all(color: Colors.white)),
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 20,
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "+123456789",
                              style: TextStyles.product_price,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )));
  }
}
