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
  final Widget? leading;
  final bool enabled;
  final bool icons;
  final double? width;
  final Color? colors;
  final bool borders;
  final TextStyle? texts;

  const ButtonPrimary(
      {this.text,
      this.onTap,
      this.trailing,
      this.enabled = true,
      this.icons = false,
      this.width,
      this.leading,
      this.colors,
      this.borders = false,
      this.texts});

  @override
  Widget build(BuildContext context) {
    return Container(
      //For All App common Button decoration
      height: 55,
      width: width != null ? width : MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: borders ? Border.all(color: ColorsConst.borderbgColor) : null,
          borderRadius: BorderRadius.circular(27),
          gradient: colors != null
              ? null
              : LinearGradient(colors: [
                  Color.fromRGBO(199, 106, 232, 1),
                  Color.fromRGBO(142, 73, 208, 1),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          color: colors != null ? colors : null),
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
            leading != null ? _buildTrailingWidget(leading) : Offstage(),
            _buildTextWidget(),
            if (trailing != null) _buildTrailingWidget(trailing),
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
        style: texts ?? TextStyles.ButtionPrimaryStyle,
      ),
    );
  }

  //For start padding and all here

  Widget _buildTrailingWidget(Widget? trailing) {
    return Padding(
      padding: const EdgeInsets.only(
        right: Spacings.small,
        left: Spacings.medium,
      ),
      child: trailing,
    );
  }
}
