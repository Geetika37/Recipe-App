import 'package:flutter/material.dart';
import 'package:recipe_app/constants/size.dart';
import 'package:recipe_app/utils/color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, top: 10),
      child: Container(
          height: screenHeight * 0.015,
          color: AppColor.appBgColor,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 2,
                color: AppColor.white,
              ),
            ),
          )),
    );
  }
}
