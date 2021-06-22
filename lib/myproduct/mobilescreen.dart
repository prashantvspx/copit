import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/myproduct/combos.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:copit/utils/customclipper.dart';
import 'package:flutter/material.dart';

class MobileDeatils extends StatefulWidget {
  const MobileDeatils({Key? key}) : super(key: key);

  @override
  _MobileDeatilsState createState() => _MobileDeatilsState();
}

class _MobileDeatilsState extends State<MobileDeatils> {
  @override
  Widget build(BuildContext context) {
    Size Sizedata = MediaQuery.of(context).size;
    return AppScaffold(
      appbarname: 'Mobile',
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CombosPage()));
          },
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildContainer(Sizedata),
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
                        padding: const EdgeInsets.only(right: Spacings.small),
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
                        width: MediaQuery.of(context).size.width / 3.4,
                        height: MediaQuery.of(context).size.height / 22,
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
                        width: MediaQuery.of(context).size.width / 3.2,
                        height: MediaQuery.of(context).size.height / 22,
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Spacings.slarge,
                    vertical: Spacings.xmedium,
                  ),
                  child: MaterialButton(
                    color: ColorsConst.greencolor,
                    height: Sizedata.height / 16,
                    minWidth: Sizedata.width / 1.9,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/addcart.png'),
                        SizedBox(
                          width: Spacings.small,
                        ),
                        const Text('Add to Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Spacings.xmedium)),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 150.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 90.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 180.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 200.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 150.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 250.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 230.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 80.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 210.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              buildContainer(Sizedata / 2.2),
                              Text(
                                'US\$ 240.00',
                                style: TextStyles.AllheadingText,
                              )
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer(Size sizedata) {
    return Container(
      height: sizedata.height / 4,
      width: sizedata.width,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(),
      ),
      child: Stack(children: [
        ClipPath(
          clipper: CustomClipperDemobottom(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/gimg.png',
              width: sizedata.width,
              fit: BoxFit.fill,
            ),
          ),
        ),
        ClipPath(
          clipper: CustomClipperDemotop(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/aceco.png',
              width: sizedata.width,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Padding(
                padding: const EdgeInsets.all(Spacings.smedium),
                child: Image.asset('assets/images/dil.png')))
      ]),
    );
  }
}
