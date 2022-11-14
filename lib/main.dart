import 'package:alastor/Components/enterPhoneno.dart';
import 'package:alastor/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Components/welcome.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AlastorTheme.LightTheme(),
              darkTheme: AlastorTheme.DarkTheme(),
              themeMode: ThemeMode.system,
              initialRoute: '/',
          routes: {
                '/':(context)=>WelcomeScreen(),
                '/phoneno':(context)=>EnterPhoneno(),
          },);
        });
  }
}
