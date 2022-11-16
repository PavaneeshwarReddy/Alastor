
import 'package:alastor/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../Themes/styles.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  TextEditingController  _pin = TextEditingController();
  bool valid=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          Navigator.popUntil(context, ModalRoute.withName('/phoneno'));
          return true;
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              //this is for pin input
            Container(
              margin: EdgeInsets.only(top: 140.h,left: 35.w),
              child:   Column(
                children: [
                  Pinput(

                        defaultPinTheme:Theme.of(context).primaryColor==Colors.black?AlastorStyles.getLightPinTheme(context):AlastorStyles.getDarkPinTheme(context),
                        keyboardType: TextInputType.number,
                        controller: _pin,

                  ),
                ],
              ),
            ),
              Container(
                margin: EdgeInsets.only(top: 35.h, left: 35.w),
                child: InkWell(
                  onTap: () {
                    Navigator.popUntil(context, ModalRoute.withName('/phoneno'));
                  },
                  child: Image.asset(
                    Theme.of(context).primaryColor == Colors.black
                        ? 'images/backButton.png'
                        : 'images/backButtonDark.png',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 35.w, top: 70.h),
                child: Text(
                  'Enter 4-digit code \nsent to you.',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),

              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(top: 320.h),
                child: Image.asset(Theme.of(context).primaryColor==Colors.black?'images/otpBackground.png':'images/otpDark.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.w,top: 195.h),
                child: Text("invalid otp,please enter a valid otp",style: GoogleFonts.inriaSans(color: AlastorColors.red2,fontSize: 11),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/404');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 210.h,left: 35.w),
                  width: 180.w,
                  height: 28.h,

                  decoration: AlastorStyles.getBoxDecoration1(AlastorColors.ashBlue),
                  child: Center(child: Text("verify otp",style: GoogleFonts.inriaSans(fontSize: 16),),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.w,top: 255.h),
                child: Text("haven't received an otp?",style: GoogleFonts.inriaSans(color: AlastorColors.grey1,fontSize: 11),)
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 270.h,left: 35.w),
                  width: 180.w,
                  height: 28.h,

                  decoration: AlastorStyles.getBoxDecoration1(AlastorColors.yellow2),
                  child: Center(child: Text("resend otp",style: GoogleFonts.inriaSans(fontSize: 16)),),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
