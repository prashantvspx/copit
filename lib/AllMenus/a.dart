// import 'dart:html';

// import 'package:copit/Colors.dart';
// import 'package:copit/DrawerFiles/helpfile.dart';
// import 'package:copit/DrawerFiles/myproduct.dart';
// import 'package:copit/DrawerFiles/payment.dart';
// import 'package:copit/DrawerFiles/sellproduct.dart';
// import 'package:copit/DrawerFiles/settingfile.dart';
// import 'package:copit/main.dart';
// import 'package:copit/spacing.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:example/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class MyDrawer extends StatefulWidget {
//     final List<MenuItem> mainMenu;
//   final Function(int)? callback;
//   final int? current;

//   MenuScreen(
//     this.mainMenu, {
//     Key? key,
//     this.callback,
//     this.current,
//   });

//   @override
//   _MyDrawerState createState() => _MyDrawerState();
// }

// class _MyDrawerState extends State<MyDrawer> {
//   @override
//   Widget build(BuildContext context) {

//         final TextStyle androidStyle = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white);
//     final TextStyle iosStyle = const TextStyle(color: Colors.white);
//     final style = kIsWeb
//         ? androidStyle
//         : Platform.isAndroid
//             ? androidStyle
//             : iosStyle;
//     return Scaffold(
//    body:   Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Theme.of(context).primaryColor,
//               Colors.indigo,
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Spacer(),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 24.0, left: 24.0, right: 24.0),
//                 child: Container(
//                   width: 80,
//                   height: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     shape: BoxShape.circle,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 36.0, left: 24.0, right: 24.0),
//                 child: Text(
//                   tr("name"),
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//               Selector<MenuProvider, int>(
//                 selector: (_, provider) => provider.currentPage,
//                 builder: (_, index, __) => Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     ...widget.mainMenu
//                         .map((item) => MenuItemWidget(
//                               key: Key(item.index.toString()),
//                               item: item,
//                               callback: widget.callback,
//                               widthBox: widthBox,
//                               style: style,
//                               selected: index == item.index,
//                             ))
//                         .toList()
//                   ],
//                 ),
//               ),
//               Spacer(),
//               Padding(
//                 padding: const EdgeInsets.only(left: 24.0, right: 24.0),
//                 child: OutlinedButton(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       tr("logout"),
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                   style: OutlinedButton.styleFrom(
//                     side: BorderSide(color: Colors.white, width: 2.0),
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
//                     textStyle: TextStyle(color: Colors.white),
//                   ),
//                   onPressed: () => print("Pressed !"),
//                 ),
//               ),
//               Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MenuItemWidget extends StatelessWidget {
//   final MenuItem? item;
//   final Widget? widthBox;
//   final TextStyle? style;
//   final Function? callback;
//   final bool? selected;

//   final white = Colors.white;

//   const MenuItemWidget({
//     Key? key,
//     this.item,
//     this.widthBox,
//     this.style,
//     this.callback,
//     this.selected,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () => callback!(item!.index),
//       style: TextButton.styleFrom(
//         primary: selected! ? Color(0x44000000) : null,
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Icon(
//             item!.icon,
//             color: white,
//             size: 24,
//           ),
//           widthBox!,
//           Expanded(
//             child: Text(
//               item!.title,
//               style: style,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class MenuItem {
//   final String title;
//   final IconData icon;
//   final int index;

//   const MenuItem(this.title, this.icon, this.index);
// }


  































// //       height: MediaQuery.of(context).size.height,
// //       width: MediaQuery.of(context).size.width,
// //       child: Drawer(
// //         child: ListView(
// //           // Important: Remove any padding from the ListView.

// //           padding: EdgeInsets.zero,
// //           children: <Widget>[
// //             Column(
// //               children: [
// //                 DrawerHeader(
// //                     child: ListTile(
// //                   trailing: Container(
// //                     decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(Spacings.small),
// //                         border: Border.all(color: ColorsConst.borderbgColor)),
// //                     padding: EdgeInsets.all(Spacings.small),
// //                     child: GestureDetector(
// //                       onTap: () {
// //                         Navigator.pop(context);
// //                       },
// //                       child: Image.asset(
// //                         'assets/images/close.png',
// //                       ),
// //                     ),
// //                   ),
// //                   title: Text(
// //                     'Maria Bond',
// //                     style: TextStyle(color: ColorsConst.PrimryblackColor),
// //                   ),
// //                   subtitle: Text(
// //                     'maria97@gmail.com',
// //                     style: TextStyle(color: ColorsConst.PrimryblackColor),
// //                   ),
// //                   leading: ClipRRect(
// //                     borderRadius: BorderRadius.circular(Spacings.small),
// //                     child: Image.asset('assets/images/photo.png'),
// //                   ),
// //                 ))
// //                 // UserAccountsDrawerHeader(
// //                 //   accountName: Text("Maria Bond"),
// //                 //   accountEmail: Text("maria97@gmail.com"),
// //                 //   currentAccountPicture: CircleAvatar(
// //                 //     child: Text(
// //                 //       "A",
// //                 //       style: TextStyle(fontSize: 40.0),
// //                 //     ),
// //                 //   ),
// //                 // ),
// //               ],
// //             ),
// //             ListTile(
// //               leading: Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(Spacings.small),
// //                     border: Border.all(color: ColorsConst.borderbgColor)),
// //                 padding: EdgeInsets.all(Spacings.small),
// //                 child: Image.asset('assets/images/dashboard.png'),
// //               ),
// //               title: Text(
// //                 "Dashboard",
// //                 style: TextStyle(
// //                     color: ColorsConst.PrimryColor,
// //                     fontFamily: 'Poppins',
// //                     fontSize: 14),
// //               ),
// //               onTap: () {
// //                 Navigator.pop(context);
// //               },
// //             ),
// //             ListTile(
// //               leading: Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(7),
// //                     border: Border.all(color: ColorsConst.borderbgColor)),
// //                 padding: EdgeInsets.all(Spacings.small),
// //                 child: Image.asset('assets/images/sellproduct.png'),
// //               ),
// //               title: Text(
// //                 "Sell Products",
// //                 style: TextStyle(
// //                     color: ColorsConst.PrimryblackColor,
// //                     fontFamily: 'Poppins',
// //                     fontSize: 14),
// //               ),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Navigator.of(context).push(
// //                     MaterialPageRoute(builder: (context) => SellProduct()));
// //               },
// //             ),
// //             ListTile(
// //               leading: Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(7),
// //                     border: Border.all(color: ColorsConst.borderbgColor)),
// //                 padding: EdgeInsets.all(Spacings.small),
// //                 child: Image.asset('assets/images/product.png'),
// //               ),
// //               title: Text(
// //                 "My Products",
// //                 style: TextStyle(
// //                     color: ColorsConst.PrimryblackColor,
// //                     fontFamily: 'Poppins',
// //                     fontSize: 14),
// //               ),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Navigator.of(context)
// //                     .push(MaterialPageRoute(builder: (context) => MyProduct()));
// //               },
// //             ),
// //             ListTile(
// //               leading: Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(7),
// //                     border: Border.all(color: ColorsConst.borderbgColor)),
// //                 padding: EdgeInsets.all(Spacings.small),
// //                 child: Image.asset('assets/images/payment.png'),
// //               ),
// //               title: Text(
// //                 "Payments",
// //                 style: TextStyle(
// //                     color: ColorsConst.PrimryblackColor,
// //                     fontFamily: 'Poppins',
// //                     fontSize: 14),
// //               ),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Navigator.of(context).push(
// //                     MaterialPageRoute(builder: (context) => MyPaymentpage()));
// //               },
// //             ),
// //             ListTile(
// //               leading: Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(7),
// //                     border: Border.all(color: ColorsConst.borderbgColor)),
// //                 padding: EdgeInsets.all(Spacings.small),
// //                 child: Image.asset('assets/images/setting.png'),
// //               ),
// //               title: Text(
// //                 "Settings",
// //                 style: TextStyle(
// //                     color: ColorsConst.PrimryblackColor,
// //                     fontFamily: 'Poppins',
// //                     fontSize: 14),
// //               ),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Navigator.of(context).push(
// //                     MaterialPageRoute(builder: (context) => SettingFile()));
// //               },
// //             ),
// //             ListTile(
// //               leading: Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(7),
// //                     border: Border.all(color: ColorsConst.borderbgColor)),
// //                 padding: EdgeInsets.all(Spacings.small),
// //                 child: Image.asset('assets/images/help.png'),
// //               ),
// //               title: Text(
// //                 "Help",
// //                 style: TextStyle(
// //                     color: ColorsConst.PrimryblackColor,
// //                     fontFamily: 'Poppins',
// //                     fontSize: 14),
// //               ),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Navigator.of(context)
// //                     .push(MaterialPageRoute(builder: (context) => Helppage()));
// //               },
// //             ),
// //             ListTile(
// //               leading: Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(7),
// //                     border: Border.all(color: ColorsConst.borderbgColor)),
// //                 padding: EdgeInsets.all(Spacings.small),
// //                 child: Image.asset('assets/images/faq.png'),
// //               ),
// //               title: Text(
// //                 "FAQ’s",
// //                 style: TextStyle(
// //                     color: ColorsConst.PrimryblackColor,
// //                     fontFamily: 'Poppins',
// //                     fontSize: 14),
// //               ),
// //               onTap: () {
// //                 Navigator.pop(context);
// //               },
// //             ),
// //             Container(
// //               //width: Spacings.xLarge,
// //               margin: EdgeInsets.symmetric(horizontal: 20),
// //               padding: EdgeInsets.only(top: Spacings.xxLarge),
// //               child: Align(
// //                 alignment: Alignment.centerLeft,
// //                 child: MaterialButton(
// //                   height: Spacings.xxxxLarge,
// // //minWidth: Spacings.xxxxLarge,
// //                   onPressed: () {},
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       Image.asset('assets/images/logout.png'),
// //                       Padding(
// //                         padding: const EdgeInsets.only(left: Spacings.small),
// //                         child: Text(
// //                           'LOGOUT',
// //                           style: TextStyle(
// //                               fontSize: Spacings.medium,
// //                               color: ColorsConst.btnbgColor,
// //                               fontWeight: FontWeight.bold),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(Spacings.large),
// //                     side: BorderSide(color: ColorsConst.btnbgColor, width: 3),
// //                   ),
// //                   minWidth: MediaQuery.of(context).size.width / 2.3,
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );

