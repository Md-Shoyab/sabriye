import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class FAQCards extends StatelessWidget {
  final String title;
  final String bodyContent;

  const FAQCards({
    Key? key,
    required this.title,
    required this.bodyContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.whiteTextColor,
        boxShadow: const [
          BoxShadow(
            color: AppColors.primaryColor,
            blurRadius: 4.0,
            offset: Offset(-1, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(5),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        title: Container(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              bodyContent,
              textAlign: TextAlign.center,
              style: const TextStyle(
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
