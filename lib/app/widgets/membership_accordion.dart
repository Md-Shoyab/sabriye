import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../constants/app_colors.dart';
import '../modules/membership/controllers/membership_controller.dart';

class MembershipAccordion extends StatelessWidget {
  final String accordionTitle, accordionContent;
  final int index;
  const MembershipAccordion({
    Key? key,
    required this.controller,
    required this.accordionTitle,
    required this.accordionContent,
    required this.index,
  }) : super(key: key);

  final MembershipController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Text(
                accordionTitle
                    .replaceAll('05.', '')
                    .replaceAll('04.', '')
                    .replaceAll('03.', '')
                    .replaceAll('02.', '')
                    .replaceAll('01.', '')
                    .replaceAll('#038;', ''),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: controller.isExpanded[index].value
                      ? AppColors.black
                      : AppColors.primaryColor,
                ),
              ),
            ),
            Obx(
              () => IconButton(
                onPressed: () {
                  controller.isExpanded[index].value =
                      !controller.isExpanded[index].value;
                },
                icon: Icon(
                  controller.isExpanded[index].value
                      ? Icons.remove_circle
                      : Icons.add_circle,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
        Obx(
          () => controller.isExpanded[index].value
              ? Text(
                  accordionContent.replaceAll('<p>', '').replaceAll('</p>', ''),
                  style: const TextStyle(
                    height: 1.5,
                  ),
                )
              : const SizedBox(height: 0, width: 0),
        ),
      ],
    );
  }
}
