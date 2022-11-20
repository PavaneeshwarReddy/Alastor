

import 'package:alastor/Themes/colors.dart';
import 'package:alastor/Widgets/SnackBarWidget.dart';
import 'package:flutter/cupertino.dart';

class AlastorSnackBar
{
    static  CustomSnackBar lightYellowSnackBar()
    {
        return CustomSnackBar('images/lightYellowBack.png', 'images/lightYellowMsg.png',AlastorColors.yellow3, "Loading...", "Hold on we are sending OTP for you");
    }
    static  CustomSnackBar DarkYellowSnackBar()
    {
        return CustomSnackBar('images/darkYellowBack.png', 'images/darkYellowMsg.png',AlastorColors.yellow3, "Loading...", "Hold on we are sending OTP for you");
    }
    static  CustomSnackBar lightRedSnackBar()
    {
        return CustomSnackBar('images/lightRedBack.png', 'images/lightRedMsg.png',AlastorColors.red3, "Oh snap!", "You have entered an invalid OTP.");
    }
    static  CustomSnackBar DarkRedSnackBar()
    {
        return CustomSnackBar('images/darkRedBack.png', 'images/darkRedMsg.png',AlastorColors.red4, "Oh snap!", "You have entered an invalid OTP.");
    }
    static  CustomSnackBar lightGreenSnackBar()
    {
        return CustomSnackBar('images/lightGreenBack.png', 'images/lightGreenMsg.png',AlastorColors.green2, "Oh snap!", "You have entered an invalid OTP.");
    }
    static  CustomSnackBar DarkGreenSnackBar()
    {
        return CustomSnackBar('images/darkGreenBack.png', 'images/darkGreenMsg.png',AlastorColors.green3, "Oh snap!", "You have entered an invalid OTP.");
    }
}
