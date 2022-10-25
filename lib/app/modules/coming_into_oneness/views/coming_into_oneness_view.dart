import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../controllers/coming_into_oneness_controller.dart';

class ComingIntoOnenessView extends GetView<ComingIntoOnenessController> {
  const ComingIntoOnenessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          title: const Text(
            'Coming Into Oneness',
            style: TextStyle(
              color: AppColors.brownColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Healing the separation\nbetween the ego and the\nsoul',
                style: TextStyle(
                  height: 1.8,
                  fontSize: 20,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ));
  }
}
