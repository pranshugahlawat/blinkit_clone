import 'dart:async';
import 'package:Blinkit_Clone/domain/constants/appcolors.dart';
import 'package:Blinkit_Clone/repository/screens/login/loginScreen.dart';
import 'package:Blinkit_Clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [UIHelper.CustomImage(img: "splash_screen.png")],
        ),
      ),
    );
  }
}
