import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/myproduct/myproductdetails.dart';
import 'package:copit/myproduct/productview.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyProductpage(),
    );
  }
}

class MyProductpage extends StatefulWidget {
  @override
  _MyProductpageState createState() => _MyProductpageState();
}

class _MyProductpageState extends State<MyProductpage> {
  int currentindex = 0;
  final controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appbarname: 'My product',
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: Spacings.medium),
                color: ColorsConst.graycolor,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Kitchen",
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: Spacings.xxmedium,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ColorsConst.borderbgColor,
                          ),
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyles.headingBigBlack,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: buildCard(page: MyProductDetails()),
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Spacings.large, bottom: Spacings.large),
                child: Container(
                  color: ColorsConst.graycolor,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Electronics",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: Spacings.xxmedium,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ColorsConst.borderbgColor,
                            ),
                            onPressed: () {},
                            child: Text(
                              'See all',
                              style: TextStyles.headingBigBlack,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 190.0,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buildCard(page: Product_Detils()),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: Spacings.large),
                child: Container(
                  color: ColorsConst.graycolor,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Kitchen",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: Spacings.xxmedium,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ColorsConst.borderbgColor,
                            ),
                            onPressed: () {},
                            child: Text(
                              'See all',
                              style: TextStyles.headingBigBlack,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4.5,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: buildCard(),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: Spacings.large),
                child: Container(
                  color: ColorsConst.graycolor,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Kitchen",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: Spacings.xxmedium,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ColorsConst.borderbgColor,
                            ),
                            onPressed: () {},
                            child: Text(
                              'See all',
                              style: TextStyles.headingBigBlack,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4.5,
                      child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: buildCard(),
                              )),
                    ),
                  ]),
                ),
              ),
            ],
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

  Widget buildCard({dynamic page}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
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
                  width: 150,
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
