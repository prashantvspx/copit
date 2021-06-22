import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class MyProductDetails extends StatefulWidget {
  const MyProductDetails({Key? key}) : super(key: key);

  @override
  _MyProductDetailsState createState() => _MyProductDetailsState();
}

class _MyProductDetailsState extends State<MyProductDetails> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appbarname: 'My Product Detail',
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(Spacings.medium),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                                        "assets/images/gimg.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/images/gimg.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/images/gimg.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    Image(
                                      image: AssetImage(
                                        "assets/images/gimg.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                  dotBgColor: Colors.white,

                                  dotColor: Colors.grey,
                                  dotIncreasedColor: Colors.green,
                                  dotIncreaseSize: 1.2,
                                  autoplay: false,
                                  // borderRadius: true,
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
                            'Electronics',
                            style: TextStyles.product_cat,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: Spacings.medium),
                      child: Text(
                        'Sony MDR-ZX110A \nOn-Ear Stereo Headphones',
                        style: TextStyles.Header_File,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: Spacings.small, top: Spacings.xxmedium),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(Spacings.small),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorsConst.PrimryblackColor),
                              child: Image.asset('assets/images/picon.png')),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text("Seller Profiles",
                                style: TextStyles.product_txt),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text("Seller Profiles",
                                style: TextStyles.product_txt),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: Spacings.xxmedium,
                          right: Spacings.xxmedium,
                          top: Spacings.xxmedium),
                      child: Text(
                        "Loreum ipsum dolar sit amet,consectetur adipscing elit,send do euismod tempor incididunt ut labore et dolore magna aliqua.Quis ipsum suspendisse ulterics gravida.",
                        style: TextStyles.sellproduct_checkbox,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: Spacings.xxmedium,
                          top: Spacings.xxmedium,
                          right: Spacings.xxmedium),
                      child: Row(
                        children: [
                          Text(
                            "US\$ 150.00",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.done),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: Spacings.small),
                            child: Text(
                              "In Stock",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text("Delivery and assembly prices not included",
                            style: TextStyles.product_del),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Spacings.medium,
                                ),
                                color: ColorsConst.prod_box_bc,
                                border: Border.all(color: Colors.white)),
                            width: 120,
                            height: 40,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      "Brand :",
                                      style: TextStyles.product_box_txt,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "Hawkins",
                                    style: TextStyles.product_box_txt,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                                color: ColorsConst.card_text_color,
                                border: Border.all(color: Colors.white)),
                            width: 150,
                            height: 40,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      "Conditon :",
                                      style: TextStyles.product_box_txt_sec,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text("Excellent",
                                      style: TextStyles.product_box_txt_sec),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: Spacings.slarge, top: Spacings.xmedium),
                      alignment: Alignment.bottomLeft,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Building: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'pareliment Hall',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])),
        ));
  }
}
