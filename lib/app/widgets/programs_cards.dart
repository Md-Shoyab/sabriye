import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';

import '../constants/app_colors.dart';

class ProgramsCards extends StatelessWidget {
  final String programTitle;
  final String programImagePath;
  final String textButton;
  const ProgramsCards({
    Key? key,
    required this.programTitle,
    required this.programImagePath,
    required this.textButton,
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
              programImagePath,
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
                  programTitle,
                  style: const TextStyle(
                    color: AppColors.themeTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const VerticalGap(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    textButton,
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
