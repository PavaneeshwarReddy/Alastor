import 'package:flutter/material.dart';


class noWifiError extends StatefulWidget {
  const noWifiError({Key? key}) : super(key: key);

  @override
  State<noWifiError> createState() => _noWifiErrorState();
}

class _noWifiErrorState extends State<noWifiError> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Image.asset('images/404.png'),
      ),
    );
  }
}
