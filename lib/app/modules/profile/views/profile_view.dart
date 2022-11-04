import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(controller.readOnly.value.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.profileText,
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
        actions: [
          Obx(
            () => controller.readOnly.value
                ? TextButton(
                    onPressed: () {
                      controller.readOnly.value = !controller.readOnly.value;
                    },
                    child: const Text('Save'),
                  )
                : IconButton(
                    onPressed: () {
                      controller.readOnly.value = !controller.readOnly.value;
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: AppColors.primaryColor,
                    ),
                  ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 130,
                    width: 130,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppAssets.profileImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const VerticalGap(gap: 30),
            const Text(AppConstants.firstNameText),
            Obx(
              () => TextFormField(
                readOnly: !controller.readOnly.value,
                controller: controller.firstNameController,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                ),
              ),
            ),
            const Divider(
              color: AppColors.black,
            ),
            const VerticalGap(),
            const Text(AppConstants.lastNameText),
            Obx(
              () => TextFormField(
                readOnly: !controller.readOnly.value,
                controller: controller.lastNameController,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            const Divider(
              color: AppColors.black,
            ),
            const VerticalGap(),
            const Text(AppConstants.emailText),
            Obx(
              () => TextFormField(
                readOnly: !controller.readOnly.value,
                controller: controller.emailController,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            const Divider(
              color: AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
