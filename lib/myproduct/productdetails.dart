import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appbarname: 'Headphones',
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
                        'Electronics: ',
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Spacings.slarge, vertical: Spacings.small),
                  child: MaterialButton(
                    color: ColorsConst.greencolor,
                    height: MediaQuery.of(context).size.height / 16,
                    minWidth: MediaQuery.of(context).size.width / 1.9,
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: Spacings.smedium,
                    left: Spacings.large,
                    right: Spacings.large,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Specification',
                        style: TextStyles.Header_File_m_size,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: Spacings.small),
                        child: Text(
                          'Lorem ipsum dolor sit amet',
                          style: TextStyles.cardstylebx,
                        ),
                      ),
                      Text('Consectetur adipiscing elit',
                          style: TextStyles.cardstylebx),
                      Text('sed do eiusmod tempor incididunt',
                          style: TextStyles.cardstylebx),
                      Text('Labore et dolore magna aliqua. Quis ipsum',
                          style: TextStyles.cardstylebx),
                      Text('suspendisse ultrices gravida.',
                          style: TextStyles.cardstylebx),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 30),
                    child: Text(
                      "Product Category",
                      style: TextStyles.Header_File_s_size,
                    ),
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
                            color: Colors.grey,
                            border: Border.all(color: Colors.white)),
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: MediaQuery.of(context).size.height / 20,
                        child: Center(
                          child: Text(
                            "Portable Audio",
                            style: TextStyles.gridtextstyle,
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
                            color: Colors.grey,
                            border: Border.all(color: Colors.white)),
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 20,
                        child: Center(
                          child: Text(
                            "Computers",
                            style: TextStyles.gridtextstyle,
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
                            color: Colors.grey,
                            border: Border.all(color: Colors.white)),
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 20,
                        child: Center(
                          child: Text(
                            "CAMERA",
                            style: TextStyles.gridtextstyle,
                          ),
                        ),
                      ),
                    ],
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
                              color: Colors.grey,
                              border: Border.all(color: Colors.white)),
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 20,
                          child: Center(
                            child: Text(
                              "Audio & Home Theatre",
                              style: TextStyles.gridtextstyle,
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
                              color: Colors.grey,
                              border: Border.all(color: Colors.white)),
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: MediaQuery.of(context).size.height / 20,
                          child: Center(
                            child: Text(
                              "TV & VIDEO",
                              style: TextStyles.gridtextstyle,
                            ),
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: Spacings.xxLarge,
                      left: Spacings.slarge,
                      bottom: Spacings.xxmedium),
                  child: Text(
                    'More items from this seller',
                    style: TextStyles.Header_File_s_size,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: Spacings.large),
                          child: Container(
                            child: buildCard(),
                          ),
                        );
                      }),
                ),
                Container(
                  color: ColorsConst.boxBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: Spacings.large,
                            bottom: Spacings.large,
                            left: Spacings.large),
                        child: Text(
                          'Explore more',
                          style: TextStyles.Header_File_m_size,
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildCardTwo(),
                                buildCardTwo(),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildCardTwo(),
                              buildCardTwo(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildCardTwo(),
                              buildCardTwo(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildCardTwo(),
                              buildCardTwo(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildCardTwo(),
                              buildCardTwo(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildCardTwo(),
                              buildCardTwo(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildCardTwo(),
                              buildCardTwo(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottembar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: ColorsConst.PrimryblackColor,
          selectedItemColor: ColorsConst.PrimryColor,
          type: BottomNavigationBarType.fixed,

          currentIndex:
              currentindex, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: currentindex == 0
                  ? ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          ColorsConst.PrimryColor, BlendMode.modulate),
                      child: Image(
                        image: AssetImage('assets/images/home.png'),
                      ),
                    )
                  : Image(
                      image: AssetImage('assets/images/home.png'),
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: currentindex == 1
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            ColorsConst.PrimryColor, BlendMode.modulate),
                        child: Image(
                          image: AssetImage('assets/images/chat.png'),
                        ),
                      )
                    : Image(
                        image: AssetImage('assets/images/chat.png'),
                      ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: currentindex == 2
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            ColorsConst.PrimryColor, BlendMode.modulate),
                        child: Image(
                          image: AssetImage('assets/images/cam.png'),
                        ),
                      )
                    : Image(
                        image: AssetImage('assets/images/cam.png'),
                      ),
                label: 'Camera'),
            BottomNavigationBarItem(
                icon: currentindex == 3
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            ColorsConst.PrimryColor, BlendMode.modulate),
                        child: Image(
                          image: AssetImage('assets/images/profile.png'),
                        ),
                      )
                    : Image(
                        image: AssetImage('assets/images/profile.png'),
                      ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: currentindex == 4
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            ColorsConst.PrimryColor, BlendMode.modulate),
                        child: Image(
                          image: AssetImage('assets/images/cart.png'),
                        ),
                      )
                    : Image(
                        image: AssetImage('assets/images/cart.png'),
                      ),
                label: 'Cart'),
          ],
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
        ));
  }

  Card buildCard() {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetailsPage()));
        },
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/wm.png',
                    fit: BoxFit.fitWidth,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'US\$ 150.00',
                style: TextStyles.gridtextstyle,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCardTwo() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: Spacings.medium),
                  width:
                      150, //give temp size when app live or api call that timer changes
                  height: 110,
                  child: Carousel(
                    images: [
                      Image(
                        image: AssetImage(
                          "assets/images/gimg.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage("assets/images/gimg.png"),
                        fit: BoxFit.cover,
                      ),
                      Image(
                          image: AssetImage("assets/images/gimg.png"),
                          fit: BoxFit.cover),
                    ],
                    dotBgColor: Colors.transparent,
                    dotColor: Colors.grey,
                    dotIncreasedColor: Colors.green,
                    dotIncreaseSize: 1.1,
                    autoplay: false,
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
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'poppins'),
                  ),
                )
              ],
            ),
            Text(
              'Aprliment HAll',
              style: TextStyle(color: Colors.deepOrange, fontFamily: 'poppins'),
            )
          ],
        ),
      ),
    );
  }
}
