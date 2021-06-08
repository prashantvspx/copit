import 'package:copit/Colors.dart';
import 'package:copit/images.dart';
import 'package:copit/spacing.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfeild extends StatefulWidget {
  final String? hintText;
  final TextInputType? keybordstype;
  final TextEditingController? controller;
  final bool isPassword;
  final List<TextInputFormatter>? numlength;

  const CustomTextfeild(
      {Key? key,
      this.hintText,
      this.numlength,
      this.controller,
      this.isPassword = false,
      this.keybordstype})
      : super(key: key);

  @override
  _CustomTextfeildState createState() => _CustomTextfeildState();
}

class _CustomTextfeildState extends State<CustomTextfeild> {
  bool isObsecureText = false;

  @override
  void initState() {
    isObsecureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.numlength,
      keyboardType: widget.keybordstype,
      //For All App common Textfiled
      controller: widget.controller,
      obscureText: isObsecureText,

      //For All App common Textfiled decoration
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27),
            borderSide: BorderSide(color: Colors.black26)),
        fillColor: ColorsConst.edittxtbgColor,
        suffixIcon: widget.isPassword
            ? IconButton(
//ImageIcon(AssetImage("assest/images/anc.png"))

                icon: ImageAssets.EyeLogos(
                  color: isObsecureText
                      ? ColorsConst.PrimryblackColor
                      : ColorsConst.PrimryColor,
                ),
                //For Eye logo if need or not setup
                onPressed: () {
                  isObsecureText = !isObsecureText;
                  setState(() {});
                },
              )
            : Offstage(),
        filled: true,
        ////For All App common Text decoration
        contentPadding:
            EdgeInsets.only(top: 20, bottom: Spacings.large, left: 22.5),
        hintText: widget.hintText ?? '-',
        hintStyle: TextStyle(
          fontSize: Spacings.xxmedium,
          fontFamily: 'Poppins',
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27.5),
            borderSide: BorderSide(color: ColorsConst.PrimryColor)),
      ),
    );
  }

  /// getLegalSentenceRichTextWidget

}
