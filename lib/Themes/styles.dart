import 'package:flutter/material.dart';

import 'colors.dart';


class AlastorStyles
{
     static OutlineInputBorder getOutlineInputBorder1(BuildContext context)
     {
       return const  OutlineInputBorder(borderSide: BorderSide(width: 0.5,color: AlastorColors.grey2),borderRadius: BorderRadius.only(bottomRight:Radius.circular(50),topRight: Radius.circular(50) ));
     }
}