import 'package:flutter/material.dart';

import 'colors.dart';


class AlastorStyles
{
     static OutlineInputBorder getOutlineInputBorder1(BuildContext context)
     {
       return   OutlineInputBorder(borderSide: BorderSide(width: 0.5,color:Theme.of(context).primaryColor==Colors.black? AlastorColors.grey2:AlastorColors.grey3),borderRadius: BorderRadius.only(bottomRight:Radius.circular(50),topRight: Radius.circular(50) ));
     }
}