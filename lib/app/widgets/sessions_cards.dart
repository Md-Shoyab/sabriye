import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';

import '../constants/app_colors.dart';

class SessionCards extends StatelessWidget {
  final String sessionTitleText;
  final String buttonText;
  final String imagePath;

  const SessionCards({
    Key? key,
    required this.sessionTitleText,
    required this.buttonText,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: Get.height * .15,
      child: Row(
        children: [
          Container(
            height: Get.height,
            width: Get.width * .35,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  sessionTitleText,
                  style: const TextStyle(
                    color: AppColors.themeTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const VerticalGap(gap: 15),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteTextColor,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.buttonColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
