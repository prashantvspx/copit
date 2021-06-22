import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:copit/utils/customclipper.dart';
import 'package:flutter/material.dart';

class CombosPage extends StatefulWidget {
  const CombosPage({Key? key}) : super(key: key);

  @override
  _CombosPageState createState() => _CombosPageState();
}

class _CombosPageState extends State<CombosPage> {
  @override
  Widget build(BuildContext context) {
    Size sizedata = MediaQuery.of(context).size;

    return AppScaffold(
      appbarname: 'Combos',
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: sizedata.height / 4,
                  width: sizedata.width,
                  padding: EdgeInsets.all(Spacings.large),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                          child: Image.asset('assets/images/dil.png')),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: Spacings.medium, left: Spacings.large),
                  child: Text(
                    'Sony MDR-ZX110A On-Ear Stereo Charger (Black)',
                    style: TextStyles.sellproduct_checkbox,
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
                        width: MediaQuery.of(context).size.width / 3.8,
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
                                "Sony",
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: Spacings.large, top: Spacings.large),
                    child: Text(
                      "US\$ 150.00",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 2.5,
                    padding: const EdgeInsets.only(
                        left: Spacings.large, top: Spacings.large),
                    child: MaterialButton(
                      color: ColorsConst.greencolor,
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
                ]),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: sizedata.height / 4,
                  width: sizedata.width,
                  padding: EdgeInsets.all(Spacings.large),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                          child: Image.asset('assets/images/dil.png')),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: Spacings.medium, left: Spacings.large),
                  child: Text(
                    'IPhone On-Ear Stereo Headphones(Black)',
                    style: TextStyles.sellproduct_checkbox,
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
                        width: MediaQuery.of(context).size.width / 3.5,
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
                                "iPhone",
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: Spacings.large, top: Spacings.large),
                    child: Text(
                      "US\$ 150.00",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 2.5,
                    padding: const EdgeInsets.only(
                        left: Spacings.large, top: Spacings.large),
                    child: MaterialButton(
                      color: ColorsConst.greencolor,
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
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
