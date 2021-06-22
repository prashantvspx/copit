import 'package:carousel_slider/carousel_slider.dart';
import 'package:copit/Colors.dart';
import 'package:copit/Screens/checkout.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CartsClass(),
    );
  }
}

class CartsClass extends StatefulWidget {
  @override
  _CartsClassState createState() => _CartsClassState();
}

class _CartsClassState extends State<CartsClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    color: ColorsConst.card_text_color,
                    border: Border.all(color: Colors.white)),
                height: 120,
                width: 130,
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
                              style: TextStyles.cardheadphone,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, top: 5.0),
                            child: Text(
                              "US\$150.00",
                              style: TextStyles.AllheadingText,
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
                            size: Spacings.slarge,
                            color: Colors.grey,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CheckOut_Page()));
                },
                child: Container(
                  // width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Colors.green,
                      border: Border.all(color: Colors.white)),

                  height: 50,

                  child: Center(
                    child: Text(
                      "Processed to Payment",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Text(
                "Product Category",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: ColorsConst.card_text_color,
                        border: Border.all(color: Colors.white)),
                    width: 120,
                    //  width: 250.0,
                    height: 40,
                    //  height: 50.0,
                    child: Center(
                      child: Text(
                        "NOTEBOOK",
                        style: TextStyles.cart_cart_block,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: ColorsConst.card_text_color,
                        border: Border.all(color: Colors.white)),
                    width: 110,
                    height:
                        40, //give temp size when app live or api call that timer changes
                    child: Center(
                      child: Text(
                        "KITCHEN",
                        style: TextStyles.cart_cart_block,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: ColorsConst.card_text_color,
                        border: Border.all(color: Colors.white)),
                    width: 100,
                    height: 40,
                    child: Center(
                      child: Text(
                        "DORM",
                        style: TextStyles.cart_cart_block,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: ColorsConst.card_text_color,
                      border: Border.all(color: Colors.white)),
                  width: 140,
                  //  width: 250.0,
                  height: 40,
                  //  height: 50.0,
                  child: Center(
                    child: Text(
                      "ELECTORONICS",
                      style: TextStyles.cart_cart_block,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: ColorsConst.card_text_color,
                      border: Border.all(color: Colors.white)),
                  width: 100,
                  //give temp size when app live or api call that timer changes
                  height: 40,

                  child: Center(
                    child: Text(
                      "CLOSET",
                      style: TextStyles.cart_cart_block,
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: ColorsConst.boxBackgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Related Products',
                          style: TextStyles.AllheadingText),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCard(),
                        buildCard(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCard(),
                        buildCard(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCard(),
                        buildCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Card buildCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                //margin: EdgeInsets.only(bottom: Spacings.medium),
                width: 160,
                child: CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/images/wm.png',
                    ),
                    Image.asset(
                      'assets/images/gimg.png',
                      alignment: Alignment.center,
                    ),
                    Image.asset(
                      'assets/images/gimg.png',
                    ),
                  ],
                  options: CarouselOptions(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/dil.png',
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_disabled_outlined,
                size: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: Spacings.small),
                child: Text(
                  'Aprliment HAll',
                  style: TextStyle(color: Colors.black, fontFamily: 'poppins'),
                ),
              )
            ],
          ),
          Text(
            'Aprliment HAll',
            style: TextStyle(color: Colors.deepOrange, fontFamily: 'poppins'),
          ),
          MaterialButton(
            color: ColorsConst.greencolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {},
            child: Row(
              children: [
                const Text('Add to Cart',
                    style: TextStyle(
                        color: Colors.white, fontSize: Spacings.xmedium)),
                Padding(
                  padding: const EdgeInsets.only(left: Spacings.small),
                  child: Image.asset('assets/images/addcart.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
