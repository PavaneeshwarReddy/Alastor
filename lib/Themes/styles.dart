import 'package:alastor/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import 'colors.dart';

class AlastorStyles {

  static OutlineInputBorder getOutlineInputBorder1(BuildContext context) {
    return OutlineInputBorder(
        borderSide: BorderSide(
            width: 0.5,
            color: Theme.of(context).primaryColor == Colors.black
                ? AlastorColors.grey2
                : AlastorColors.grey3),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50), topRight: Radius.circular(50)));
  }

  static PinTheme getDarkPinTheme(BuildContext context) {
    return  PinTheme(
        width: 40.w,
        padding: EdgeInsets.all(5),
        height: 40.h,
        textStyle: AlastorTheme.DarkTheme().textTheme.headline1,
        decoration: BoxDecoration(
      shape: BoxShape.circle,
          border: Border.all(color: AlastorColors.grey3)

    ));
  }
  static PinTheme getLightPinTheme(BuildContext context) {
    return  PinTheme(
        width: 40.w,
        padding: EdgeInsets.all(5),
        height: 40.h,
        textStyle: AlastorTheme.LightTheme().textTheme.headline1,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AlastorColors.grey2)

        ));
  }

  static BoxDecoration getBoxDecoration1(Color color)
  {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      );
  }
}
