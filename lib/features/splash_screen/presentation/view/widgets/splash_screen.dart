import 'dart:async';

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home_screen/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash_screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Image(image: AssetImage("assets/images/Logo.png")),
           SizedBox(height: 10,),
           Text("Ready to Pick your book !",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none,
            ),)
        ],
      ),
    );
  }
}
