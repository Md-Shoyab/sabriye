import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/books_cards.dart';
import '../controllers/books_listing_controller.dart';

class BooksListingView extends GetView<BooksListingController> {
  const BooksListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://a.co/d/aZLBJIr');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.booksAndEbooksText,
          style: TextStyle(
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const VerticalGap(gap: 20),
          const BookCards(
            bookTitleText: AppConstants.booksCardTitle1,
            imagePath: AppAssets.booksImage1,
            textButtonText: AppConstants.booksCardButtonText,
            routes: Routes.BOOK_DETAILS,
          ),
          SizedBox(
            height: Get.height * .2,
            child: Row(
              children: [
                Container(
                  height: Get.height,
                  width: Get.width * .35,
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppAssets.booksImage2,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        AppConstants.booksCardTitle2,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const VerticalGap(gap: 15),
                      const Text(
                        'Know More',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const VerticalGap(gap: 15),
                      TextButton(
                        onPressed: () async {
                          if (!await launchUrl(
                            _url,
                            mode: LaunchMode.externalApplication,
                          )) {
                            throw 'Could not launch $_url';
                          }
                        },
                        child: const Text(
                          AppConstants.booksCardButtonText2,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
