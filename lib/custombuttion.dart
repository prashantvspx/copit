import 'package:copit/Colors.dart';
import 'package:copit/spacing.dart';
import 'package:copit/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  static const double defaultHeight = 50;

  final String? text;

  final VoidCallback? onTap;
  final Widget? trailing;
  final bool enabled;
  final bool icons;

  const ButtonPrimary({
    this.text,
    this.onTap,
    this.trailing,
    this.enabled = true,
    this.icons = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //For All App common Button decoration
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(199, 106, 232, 1),
            Color.fromRGBO(142, 73, 208, 1),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: MaterialButton(
        onPressed: enabled ? onTap : null,
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildTextWidget(),
            if (trailing != null) _buildTrailingWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextWidget() {
    return Flexible(
      child: Text(
        text ?? "",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.ButtionPrimaryStyle,
      ),
    );
  }

  //For start padding and all here

  Widget _buildTrailingWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        right: Spacings.small,
        left: Spacings.medium,
      ),
      child: trailing,
    );
  }
}
