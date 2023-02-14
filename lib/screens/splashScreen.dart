import 'dart:async';
import 'package:baohiemyte/screens/loginScreen.dart';

import '../screens/homeScreen.dart';
import 'package:flutter/material.dart';
import '../utils/helper.dart';
import '../const/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 2000), () {
      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        decoration: BoxDecoration(color: AppColor.orange),
        child:  Image.asset(
          Helper.getAssetName("yte.jpg", "real"),
          fit: BoxFit.fill,
          // height: double.infinity,
          // width: double.infinity,
        ),
      ),
    );
  }
}
