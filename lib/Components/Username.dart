import 'package:alastor/Themes/colors.dart';
import 'package:alastor/Themes/styles.dart';
import 'package:alastor/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class UsernameScreen extends StatefulWidget {
  const UsernameScreen({Key? key}) : super(key: key);

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
 TextEditingController _username = TextEditingController();
 bool _isLoading=false;
  @override
  Widget build(BuildContext context) {
    Color _theme = Theme.of(context).scaffoldBackgroundColor;
    return SafeArea(child:
    Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          child: Image.asset(_theme==Colors.white?"images/usernameBackground.png":"images/usernameBackgroundDark.png"),
        ),
        Container(
          margin: EdgeInsets.only(left: 35.w,top: 35.h),
          width: 24.w,
          height: 24.h,
          child: InkWell(
              onTap: (){
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },child: Image.asset(_theme==Colors.white?"images/backButton.png":"images/backButtonDark.png")),
        ),
       Container(
         margin: EdgeInsets.only(top: 65.h,left: 45.w),
         child:  RichText(text: TextSpan(
             children: [
               TextSpan(
                   text: "verification",
                   style: Theme.of(context).textTheme.headline1
               ),
               TextSpan(
                   text: " Successful",
                   style: Theme.of(context).textTheme.headline1?.copyWith(color: AlastorColors.green2)
               )
             ]
         )),
       ),
        Container(
          margin: EdgeInsets.only(top: 100.h,left: 45.w),
          child: Text("you have successfully verified your \nmobile number.",style: Theme.of(context).textTheme.bodyText1,),

        ),

        Container(margin: EdgeInsets.only(top: 130.h,left: 45.w),child: Text("Enter username:",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),),),
        Container(
          width: 250.w,
          margin: EdgeInsets.only(left: 45.w,top: 160.h),
          child: TextFormField(
            cursorColor: AlastorColors.grey1,
            cursorWidth: 0.5,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.h),
              hintStyle: Theme.of(context).textTheme.headline3,
              border: AlastorStyles.getOutlineInputBorder1(context),
              focusedBorder:
              AlastorStyles.getOutlineInputBorder1(context),
              enabledBorder:
              AlastorStyles.getOutlineInputBorder1(context),
              prefixIcon: Image.asset("images/usernameIcon.png",scale: 1.5,),
            ),
          ),
        ),
        GestureDetector(
          child:  Container(
              width: 95.w,
              height: 40.h,
              margin: EdgeInsets.only(left: 45.w, top: 215.h),
              decoration: const BoxDecoration(
                  color: AlastorColors.blue2,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Center(
                  child:!_isLoading?Text(
                    "register",
                    style: GoogleFonts.inriaSans(
                        fontSize: 16, color: Colors.black),
                  ):SizedBox(width: 20.w,height: 20.h,child: const CircularProgressIndicator(color: Colors.black,strokeWidth: 0.8,),)
              )),
        ),


      ],
      ),
    ));
  }
}
