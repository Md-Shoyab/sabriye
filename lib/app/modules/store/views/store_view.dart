import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/store_option_cards.dart';
import '../controllers/store_controller.dart';

class StoreView extends GetView<StoreController> {
  const StoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Store',
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
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          VerticalGap(gap: Get.height * .15),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: Get.height,
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              children: const [
                StoreOptionCard(
                  iconImagePath: AppAssets.membershipIcon,
                  storeOptionName: 'Membership',
                  navigationRoute: '',
                ),
                StoreOptionCard(
                  iconImagePath: AppAssets.programsIcon,
                  storeOptionName: 'Programs',
                  navigationRoute: '',
                ),
                StoreOptionCard(
                  iconImagePath: AppAssets.sessionsIcon,
                  storeOptionName: 'Sessions',
                  navigationRoute: '',
                ),
                StoreOptionCard(
                  iconImagePath: AppAssets.booksIcon,
                  storeOptionName: 'Books',
                  navigationRoute: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
