import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/membership_controller.dart';

class MembershipView extends GetView<MembershipController> {
  const MembershipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Membership',
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
      body: ListView(
        children: [
          const VerticalGap(),
          Image.asset(
            AppAssets.memberhsipBannerImage,
            fit: BoxFit.fill,
          ),
          const VerticalGap(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text(
              'The Inner Learning Circle. Join us today\nrisk-free!',
              style: TextStyle(
                height: 1.5,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const VerticalGap(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text(
                '''Get Instant Access to Spiritual teachings on Healing the subconscious, Inner Union, Ascension, 5D or Heaven on Earth, Past Lives, Law of Attraction, Soul Partnerships, and more! You can join on a trial, or a monthly or annual membership if you want to feel into the vibe and teachings first before you dive in deep.'''),
          ),
          const VerticalGap(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text(
              'Join today and receive:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
