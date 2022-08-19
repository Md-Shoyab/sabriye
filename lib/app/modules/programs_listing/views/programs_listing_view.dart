import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/programs_cards.dart';
import '../controllers/programs_listing_controller.dart';

class ProgramsListingView extends GetView<ProgramsListingController> {
  const ProgramsListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Programs',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: const [
          ProgramsCards(
            programImagePath: AppAssets.programImage1,
            programTitle: 'Akasha Healing™\nPractitioner Certification',
            textButton: 'Learn More',
          ),
          ProgramsCards(
            programImagePath: AppAssets.programImage2,
            programTitle: 'Coming into Oneness',
            textButton: 'Buy Now',
          ),
        ],
      ),
    );
  }
}