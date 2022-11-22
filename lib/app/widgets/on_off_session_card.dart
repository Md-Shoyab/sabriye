import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';

import '../constants/app_assets.dart';
import '../constants/app_colors.dart';

class OneOffSessionCards extends StatelessWidget {
  final String title, content;
  const OneOffSessionCards({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            color: AppColors.lightprimary,
          )
        ],
        image: const DecorationImage(
          alignment: Alignment.bottomRight,
          image: AssetImage(
            AppAssets.sessionCardFlowerImage,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          // const VerticalGap(),
          Html(
            data: content,
            style: {
              'p': Style(
                maxLines: 5,
              )
            },
          ),
          const VerticalGap(),
          Row(
            children: [
              const HorizontalGap(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
              const HorizontalGap(gap: 25),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Learn More',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
