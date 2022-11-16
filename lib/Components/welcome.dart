import 'package:alastor/Animations/animations.dart';
import 'package:alastor/Components/enterPhoneno.dart';
import 'package:alastor/Themes/colors.dart';
import 'package:alastor/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              body: Container(
        child: Stack(
          children: [
            //brand logo
            Container(
              margin: EdgeInsets.only(left: 40.w, top: 30.h),
              child: Image.asset(
                Theme.of(context).scaffoldBackgroundColor == Colors.white
                    ? 'images/whitebrand.png'
                    : 'images/darkbrand.png',
                width: 147.w,
                height: 50.h,
              ),
            ),

            //background image
            Container(
              margin: EdgeInsets.only(left: 104.w),
              alignment: Alignment.topRight,
              child: Image.asset('images/welcomeBackground.png'),
            ),

            //header text of home page
            Container(
              width: 284.w,
              height: 71.h,
              margin: EdgeInsets.only(left: 40.w, top: 530.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Don't let sleep",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "miss your ",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextSpan(
                        text: "Des",
                        style: GoogleFonts.inriaSans(
                            fontSize: 28, color: AlastorColors.red1)),
                    TextSpan(
                        text: "tin",
                        style: GoogleFonts.inriaSans(
                            fontSize: 28, color: AlastorColors.yellow1)),
                    TextSpan(
                        text: "ati",
                        style: GoogleFonts.inriaSans(
                            fontSize: 28, color: AlastorColors.green1)),
                    TextSpan(
                        text: "on.",
                        style: GoogleFonts.inriaSans(
                            fontSize: 28, color: AlastorColors.blue1)),
                  ]))
                ],
              ),
            ),

            //login with phone number button
            Container(
              width: 300.w,
              height: 40.h,
              margin: EdgeInsets.only(top: 598.h, left: 40.w),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50)),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/phoneno');
                  },
                  child: Center(
                    child: Text(
                      "login with phone number",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  )),
            ),

            Container(
              width: 130.w,
              height: 40.h,
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              margin: EdgeInsets.only(left: 40.w, top: 653.h),
              decoration: BoxDecoration(
                  color: AlastorColors.pink,
                  borderRadius: BorderRadius.circular(50)),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset('images/googleLogo.png',
                        width: 20.w, height: 20.h),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text("Google",
                        style: GoogleFonts.inriaSans(
                            fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
            ),

            Container(
              width: 130.w,
              height: 40.h,
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              margin: EdgeInsets.only(left: 209.w, top: 653.h),
              decoration: BoxDecoration(
                  color: AlastorColors.ashBlue,
                  borderRadius: BorderRadius.circular(50)),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset('images/facebookLogo.png',
                        width: 20.w, height: 20.h),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text("Facebook",
                        style: GoogleFonts.inriaSans(
                            fontSize: 15, color: Colors.black))
                  ],
                ),
              ),
            ),

            Container(
              width: 295.w,
              height: 40.h,
              margin: EdgeInsets.only(left: 40.w, top: 705.h),
              child: Row(
                children: [
                  Checkbox(
                    shape: CircleBorder(),
                    side: BorderSide(
                        color: Theme.of(context).scaffoldBackgroundColor ==
                                Colors.white
                            ? AlastorColors.checkBoxWhite
                            : AlastorColors.checkBoxDark),
                    value: isChecked,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    },
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text:
                            "By selecting you are confirming that you have read and\n agree with the",
                        style: Theme.of(context).textTheme.bodyText1),
                    TextSpan(
                        text: " terms & conditions,",
                        style: GoogleFonts.inriaSans(
                            fontSize: 11,
                            color: AlastorColors.blue1,
                            decoration: TextDecoration.underline)),
                    TextSpan(
                        text: ' privacy policy\n',
                        style: GoogleFonts.inriaSans(
                            fontSize: 11,
                            color: AlastorColors.yellow1,
                            decoration: TextDecoration.underline)),
                    TextSpan(
                        text: 'of the company.',
                        style: Theme.of(context).textTheme.bodyText1)
                  ]))
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
