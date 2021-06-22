import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  //Start All Card From here manage all card from here add anu thing in card then add here
  final String? names;
  final String? images;
  final Widget? leftimages;

  AppCard({this.names, this.images, this.leftimages});

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Spacings.small),
              borderSide: BorderSide.none),
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.symmetric(
                  horizontal: Spacings.xxmedium, vertical: Spacings.slarge),
              decoration: BoxDecoration(
                color: ColorsConst.boxBackgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: ColorsConst.boxshawodColor,
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                borderRadius: BorderRadius.circular(Spacings.small),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        widget.images ?? '',
                      ),
                      SizedBox(
                        width: Spacings.medium,
                      ),
                      Text(
                        widget.names ?? '-',
                        style: TextStyles.cardstylebx,
                      ),
                    ],
                  ),
                  widget.leftimages ??
                      Image.asset(
                        "assets/images/righta.png",
                        height: Spacings.large,
                        width: Spacings.large,
                      ),
                ],
              )),
        ),
      ),
    );
  }
}
