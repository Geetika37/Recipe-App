import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/constants/size.dart';
import 'package:recipe_app/constants/textstyle.dart';
import 'package:recipe_app/screens/splashscreen/controller/splash_controller.dart';
import 'package:recipe_app/utils/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/recipe_app_logo.png',
                    height: 180,
                    width: 160,
                  ),
                  Text(
                    'Recipe App',
                    style: lexend(AppColor.appBgColor, 20, FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
