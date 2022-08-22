import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/gapper.dart';
import '../controllers/book_details_controller.dart';

class BookDetailsView extends GetView<BookDetailsController> {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'The Ultimate Guide to\nInner Union',
          textAlign: TextAlign.justify,
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
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.purpleBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  height: 192,
                  width: 162,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.booksImage1),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const VerticalGap(gap: 30),
                const Text(
                  'The Ultimate Guide to\nInner Union',
                  style: TextStyle(
                    fontSize: 25,
                    height: 1.6,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteTextColor,
                  ),
                ),
                const VerticalGap(),
                const Text(
                  'Have you tried everything else to manifest the life of your dreams, but failed?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.8,
                  ),
                ),
                const VerticalGap(),
                const Text(
                  'This is because your ego and your soul were not on the same page.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.8,
                  ),
                ),
                const VerticalGap(),
                const Text(
                  'In this in-depth guide to Inner Union, Sabriyé explains the process of healing the separation between the ego and the soul in order to create inner union of the higher and lower self. Heaven on Earth is a state of consciousness we unlock within ourselves when we heal the wounded ego. It’s when we get the ego and the soul on the same page, that we take our manifesting to the soul level.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.8,
                  ),
                ),
                const VerticalGap(gap: 20),
                const Text(
                  'Download this FREE e-book.',
                  style: TextStyle(
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const VerticalGap(gap: 15),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: 'Name'),
                ),
                const VerticalGap(gap: 20),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: 'Email'),
                ),
                const VerticalGap(gap: 15),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Direct Download',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppColors.whiteTextColor,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.buttonColor,
                  ),
                ),
                const VerticalGap(gap: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
