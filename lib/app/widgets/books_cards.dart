import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';

import '../constants/app_colors.dart';

class BookCards extends StatelessWidget {
  final String bookTitleText;
  final String imagePath;
  final String textButtonText;
  const BookCards({
    Key? key,
    required this.bookTitleText,
    required this.imagePath,
    required this.textButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .2,
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
              children: [
                Text(
                  bookTitleText,
                  style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const VerticalGap(gap: 15),
                const Text(
                  'Know More',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const VerticalGap(gap: 15),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    textButtonText,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
