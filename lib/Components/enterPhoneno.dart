import 'package:alastor/Themes/colors.dart';
import 'package:alastor/Themes/styles.dart';
import 'package:alastor/Themes/themes.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterPhoneno extends StatefulWidget {
  const EnterPhoneno({Key? key}) : super(key: key);

  @override
  State<EnterPhoneno> createState() => _EnterPhonenoState();
}

class _EnterPhonenoState extends State<EnterPhoneno> {
  final countryPicker = const FlCountryCodePicker();
  TextEditingController _phoneNo = TextEditingController();
  String phoneNo = "";
  CountryCode? countryCode;
  String dialcode = "+91";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 35.h, left: 35.w),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Image.asset(
                  'images/backButton.png',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 65.h, left: 35.w),
              child: Text(
                "Enter your phone no",
                style: AlastorTheme.LightTheme().textTheme.headline1,
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 100.h, left: 35.w),
              width: 246.w,
              child: Text(
                'This number is  used for unique identification purpose only. This number shall receive a verification code via SMS.',
                style: AlastorTheme.LightTheme().textTheme.bodyText1,
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 270.h, left: 47.w),
              child: Image.asset(
                'images/phonenoBackground.png',
                width: 625.w,
                height: 616.h,
              ),
            ),
            GestureDetector(
              onTap: () async {
                final code = await countryPicker.showPicker(context: context);
                setState(() {
                  countryCode = code;
                  dialcode = countryCode!.dialCode;
                });
              },
              child: Container(
                width: 50.w,
                height: 50.h,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 150.h, left: 35.w),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: AlastorColors.grey2, width: 0.5),

                ),
                child: dialcode == "+91"
                    ? Image.asset(
                        'images/india.png',
                      )
                    : countryCode!.flagImage,
              ),
            ),
            Container(
             width: 210.w,
              height: 50.h,
              
              margin: EdgeInsets.only(top: 150.h, left: 90.w),
              child:  TextFormField(
                
                    cursorColor: AlastorColors.grey1,
                    keyboardType: TextInputType.number,
                    //add cursor height after
                    cursorWidth: 0.5,
                    decoration: InputDecoration(

                      hintText:dialcode,
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: AlastorTheme.LightTheme().textTheme.headline3,
                      border:AlastorStyles.getOutlineInputBorder1(context),
                      focusedBorder:AlastorStyles.getOutlineInputBorder1(context),
                      enabledBorder:AlastorStyles.getOutlineInputBorder1(context),
                      

                    ),
              ),
            ),
            Container(
              width: 95.w,
              height:40.h,

              margin: EdgeInsets.only(left: 90.w,top:210.h ),
              decoration:const  BoxDecoration(
                  color: AlastorColors.pink,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),topRight: Radius.circular(50))
              ),
              child:Center(child:  Text("send otp",style: GoogleFonts.inriaSans(fontSize: 16,color: Colors.black),),)
            )
          ],
        ),
      ),
    );
  }
}
