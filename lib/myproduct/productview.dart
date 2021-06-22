import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/myproduct/productdetails.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class Product_Detils extends StatefulWidget {
  const Product_Detils({Key? key}) : super(key: key);

  @override
  _Product_DetilsState createState() => _Product_DetilsState();
}

class _Product_DetilsState extends State<Product_Detils> {
  int currentindex = 0;
  bool checkdata = false;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appbarname: 'Home',
        flotingaction: FloatingActionButton(
          onPressed: () {},
          child: Image.asset('assets/images/filter.png'),
          backgroundColor: ColorsConst.filter_bg_color,
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Headphones',
                style: TextStyles.Header_File,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: Spacings.medium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '549 items',
                          style: TextStyles.product_price,
                        ),
                        Row(
                          children: [
                            Text(
                              'Category: ',
                              style: TextStyles.product_price,
                            ),
                            Text(
                              'Electronics',
                              style: TextStyles.product_price,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: Spacings.small),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    child: Text('data'),
                                  );
                                });
                          },
                          child: Container(
                              padding: EdgeInsets.all(Spacings.medium),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorsConst.btn_border_bcg),
                                  borderRadius: BorderRadius.circular(10),
                                  color: ColorsConst.White),
                              child: Image.asset(
                                  'assets/images/productarrow.png')),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorsConst.btn_border_bcg),
                            borderRadius: BorderRadius.circular(10),
                            color: ColorsConst.White),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    // margin:
                                    //     EdgeInsets.only(left: 15, right: 15),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.transparent),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                        )),
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    child: Column(
                                      children: [
                                        ListTile(
                                          leading: Image.asset(
                                              'assets/images/sort.png'),
                                          title: Text('Sort',
                                              style: TextStyles.addproductText),
                                          trailing: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              height: Spacings.large,
                                              width: Spacings.large,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: ColorsConst.bclight),
                                              child: Image.asset(
                                                'assets/images/close.png',
                                                color: ColorsConst.White,
                                                height: Spacings.xmedium,
                                                width: Spacings.xmedium,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              checkdata = !checkdata;
                                            });
                                          },
                                          title: Text(
                                            'Lowest Price',
                                            style: TextStyles.addproductText,
                                          ),
                                          trailing: checkdata
                                              ? Icon(Icons.done)
                                              : Offstage(),
                                        ),
                                        ListTile(
                                          onTap: () {
                                            setState(() {
                                              checkdata = !checkdata;
                                            });
                                          },
                                          title: Text(
                                            'Highest Price',
                                            style: TextStyles.addproductText,
                                          ),
                                          trailing: checkdata
                                              ? Icon(Icons.done)
                                              : Offstage(),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Row(
                            children: [
                              Image.asset('assets/images/sort.png'),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: Spacings.small),
                                child: Text(
                                  'Sort',
                                  style: TextStyles.addproductText,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: ColorsConst.boxBackgroundColor,
                  child: ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildCard(),
                            buildCard(),
                          ],
                        ),
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

  Widget buildCard() {
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
