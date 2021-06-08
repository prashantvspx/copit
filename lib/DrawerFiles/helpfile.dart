import 'package:copit/AllMenus/app_scaffold.dart';
import 'package:copit/Colors.dart';
import 'package:copit/custom_textfiled.dart';
import 'package:copit/custombuttion.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class HelpDaskPage extends StatefulWidget {
  @override
  _HelpDaskPageState createState() => _HelpDaskPageState();
}

class _HelpDaskPageState extends State<HelpDaskPage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appbarname: "Help",
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: Spacings.xxxxLarge),
                child: Text(
                  'Hi, how can we help?',
                  style: TextStyles.gridtextstyle,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: Spacings.medium),
                child: Text(
                  'Sed do eiusmod tempor incididunt\n         labore dolore magna aliqua.',
                  style: TextStyles.helptext,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Spacings.slarge,
                    left: Spacings.slarge,
                    right: Spacings.slarge),
                child: Container(
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Reason',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black26)),
                    ),
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Spacings.xLarge, bottom: Spacings.xxxxLarge),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: Spacings.slarge, right: Spacings.slarge),
                  child: MaterialButton(
                    color: ColorsConst.greencolor,
                    height: MediaQuery.of(context).size.height / 16,
                    minWidth: MediaQuery.of(context).size.width / 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    child: const Text('Submit',
                        style: TextStyle(
                            color: Colors.white, fontSize: Spacings.xmedium)),
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
}
