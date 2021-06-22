import 'package:carousel_slider/carousel_slider.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appbarname: 'Dashboard',
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: Spacings.xxmedium,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(
                                    color: ColorsConst.btn_border_bcg)),
                            primary: ColorsConst.White,
                          ),
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: TextStyles.headingBigBlack,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        // alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: ColorsConst.btn_border_bcg)),
                              child: CircleAvatar(
                                radius: MediaQuery.of(context).size.height / 25,
                                backgroundColor: ColorsConst.dashbordnotebook,
                                child: Image.asset(
                                  'assets/images/notebook.png',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Notebooks',
                                style: TextStyles.sellproduct_checkbox,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: ColorsConst.btn_border_bcg)),
                                child: CircleAvatar(
                                  radius:
                                      MediaQuery.of(context).size.height / 25,
                                  backgroundColor: ColorsConst.dashkitchen,
                                  child: Image.asset(
                                    'assets/images/kitchendash.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Kitchen',
                                  style: TextStyles.sellproduct_checkbox,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: ColorsConst.btn_border_bcg)),
                                child: CircleAvatar(
                                  radius:
                                      MediaQuery.of(context).size.height / 25,
                                  backgroundColor: ColorsConst.dashElectronics,
                                  child: Image.asset(
                                    'assets/images/electronics.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Electronics',
                                  style: TextStyles.sellproduct_checkbox,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: ColorsConst.btn_border_bcg)),
                                child: CircleAvatar(
                                  radius:
                                      MediaQuery.of(context).size.height / 25,
                                  backgroundColor: ColorsConst.dashDorm,
                                  child: Image.asset(
                                    'assets/images/dorm.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Dorm',
                                  style: TextStyles.sellproduct_checkbox,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: ColorsConst.dashcard,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Most Viewed",
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: Spacings.xxmedium,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                          color: ColorsConst.btn_border_bcg)),
                                  primary: ColorsConst.White,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'See all',
                                  style: TextStyles.headingBigBlack,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200.0,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Brand",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: Spacings.xxmedium,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color: ColorsConst.btn_border_bcg)),
                                primary: ColorsConst.White,
                              ),
                              onPressed: () {},
                              child: Text(
                                'See all',
                                style: TextStyles.headingBigBlack,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color: ColorsConst.dashbrand)),
                                primary: ColorsConst.dashbrand,
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 12),
                                child: Image.asset('assets/images/coco.png'),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color: ColorsConst.dashbrand)),
                                primary: ColorsConst.dashbrand,
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 12),
                                child: Image.asset('assets/images/slack.png'),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color: ColorsConst.dashbrand)),
                                primary: ColorsConst.dashbrand,
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 12),
                                child: Image.asset(
                                  'assets/images/spotify.png',
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: ColorsConst.dashcard,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Most Viewed",
                              style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: Spacings.xxmedium,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                          color: ColorsConst.btn_border_bcg)),
                                  primary: ColorsConst.White,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'See all',
                                  style: TextStyles.headingBigBlack,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200.0,
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
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
