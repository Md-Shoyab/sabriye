import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/sessions_cards.dart';
import '../controllers/sessions_listing_controller.dart';

class SessionsListingView extends GetView<SessionsListingController> {
  const SessionsListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Sessions',
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
          SessionCards(
            buttonText: 'Learn More',
            imagePath: AppAssets.sessionImage1,
            sessionTitleText: 'Akasha Healing Journey',
            routes: Routes.SESSION_DETAILS_AKASHAY,
          ),
          SessionCards(
            buttonText: 'Buy Now',
            imagePath: AppAssets.sessionImage2,
            sessionTitleText: 'Bach Flower Power\nSession',
            routes: '',
          ),
        ],
      ),
    );
  }
}
