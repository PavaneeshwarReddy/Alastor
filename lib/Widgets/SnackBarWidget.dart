import 'package:alastor/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSnackBar extends StatelessWidget {
  String msgbubblePath;
  String bubblePath;
  Color backgroundColor;
  String msg;
  String subtitle;
  CustomSnackBar(this.bubblePath,this.msgbubblePath,this.backgroundColor,this.msg,this.subtitle);
  @override
  Widget build(BuildContext context) {
    return Container(

            height: 75.h,
            width: double.infinity,
            decoration:  BoxDecoration(
                color: backgroundColor,
               borderRadius:const  BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(bubblePath,width: 75.w,),
                  bottom: 0,
                  left: 0,
                ),
                Transform.translate(
                  offset: Offset(10.w, -30.h),
                  child: Image.asset(
                    msgbubblePath,
                    width: 50.w,
                    height: 50.h,
                  ),

                ),
                // Positioned(child: Text("Well Done!",style: GoogleFonts.inriaSans(fontSize: 34,color: Colors.white),)
                // ,
                // right: 20.w,top: 5.h,),
                // Positioned(top: 45.h,right: 20.w,child: Text("You have successfully completed your\nOTP verification",style: GoogleFonts.inriaSans(fontSize: 14,color: Colors.white),))
                Container(
                    margin: EdgeInsets.only(left: 150.w,top: 5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(msg,style: GoogleFonts.inriaSans(fontSize: 28,color: Colors.white),),
                      Text(subtitle,style: GoogleFonts.inriaSans(fontSize: 12,color: Colors.white))

                      ],
                    ),
                )

              ],
            ),


        );
  }
}
