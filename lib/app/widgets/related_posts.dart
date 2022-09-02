// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/modules/teachings_details/controllers/teachings_details_controller.dart';
import 'gapper.dart';

class RelatedPost extends StatelessWidget {
  TeachingsDetailsController teachingsDetailsController =
      Get.put(TeachingsDetailsController());
  final GetxController controller;
  final int index;
  RelatedPost({
    Key? key,
    required this.controller,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalGap(gap: 10),
        Container(
          margin: const EdgeInsets.only(left: 8),
          height: Get.height * .15,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(
                  teachingsDetailsController.relatedPostImages[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const VerticalGap(gap: 5),
        Container(
          margin: const EdgeInsets.only(left: 10),
          width: 200,
          child: const Text(
            'The Nine Levels of Twin Flames Initiations...',
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
