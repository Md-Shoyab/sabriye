import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
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
          AppConstants.booksCardTitle1,
          textAlign: TextAlign.justify,
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
                  AppConstants.booksCardTitle1,
                  style: TextStyle(
                    fontSize: 25,
                    height: 1.6,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
                const VerticalGap(),
                const Text(
                  AppConstants.booksDetailsContent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.8,
                  ),
                ),
                const VerticalGap(),
                const Text(
                  AppConstants.booksDetailsContent2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.8,
                  ),
                ),
                const VerticalGap(),
                const Text(
                  AppConstants.booksDetailsContent3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.8,
                  ),
                ),
                const VerticalGap(gap: 20),
                const Text(
                  AppConstants.downloadThisFreeEbookNowText,
                  style: TextStyle(
                    color: AppColors.black,
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
                      hintText: AppConstants.nameText),
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
                      hintText: AppConstants.emailText),
                ),
                const VerticalGap(gap: 15),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppConstants.directDownloadText,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
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
                    backgroundColor: AppColors.primaryColor,
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
