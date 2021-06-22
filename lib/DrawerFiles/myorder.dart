import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class MyorderPage extends StatefulWidget {
  const MyorderPage({Key? key}) : super(key: key);

  @override
  _MyorderPageState createState() => _MyorderPageState();
}

class _MyorderPageState extends State<MyorderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'My Order',
            style: TextStyles.addproductText,
          ),
          bottom: TabBar(
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: ColorsConst.filter_bg_color,
            ),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.all(Spacings.small),
                  child: Text(
                    "Deliverd",
                    style: TextStyles.addproductText,
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.all(Spacings.small),
                  child: Text(
                    "Processing",
                    style: TextStyles.addproductText,
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.all(Spacings.small),
                  child: Text(
                    "Cancelled",
                    style: TextStyles.addproductText,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
                left: Spacings.large,
                right: Spacings.large,
                top: Spacings.medium),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              buildCard('Delivered'),
                              buildCard('Delivered'),
                              buildCard('Delivered'),
                              buildCard('Delivered'),
                              buildCard('Delivered'),
                              buildCard('Delivered'),
                              buildCard('Delivered'),
                              buildCard('Delivered'),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              buildCard('Processing'),
                              buildCard('Processing'),
                              buildCard('Processing'),
                              buildCard('Processing'),
                              buildCard('Processing'),
                              buildCard('Processing'),
                              buildCard('Processing'),
                              buildCard('Processing'),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              buildCard('Cancelled'),
                              buildCard('Cancelled'),
                              buildCard('Cancelled'),
                              buildCard('Cancelled'),
                              buildCard('Cancelled'),
                              buildCard('Cancelled'),
                              buildCard('Cancelled'),
                              buildCard('Cancelled'),
                            ],
                          ),
                        ),
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

  Card buildCard(String Title) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(Spacings.medium),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sony MDR-ZX110A',
                  style: TextStyles.addproductText,
                ),
                Text(
                  '05-12-2021',
                  style: TextStyles.cart_cart_price,
                )
              ],
            ),
            SizedBox(
              height: Spacings.xmedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quantity: 3',
                  style: TextStyles.cart_cart_price,
                ),
                Row(
                  children: [
                    Text(
                      'Total Amount:',
                      style: TextStyles.cart_cart_price,
                    ),
                    Text(
                      'US\$ 150.00',
                      style: TextStyles.sellproduct_checkbox,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: Spacings.xmedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: ColorsConst.fontcolorblck)),
                  onPressed: () {},
                  child: Text('Detail'),
                ),
                Text(
                  Title,
                  style: TextStyles.Aamount_small_Text,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
