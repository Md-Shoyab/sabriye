import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/books_cards.dart';
import '../controllers/books_listing_controller.dart';

class BooksListingView extends GetView<BooksListingController> {
  const BooksListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        children: const [
          VerticalGap(gap: 20),
          BookCards(
            bookTitleText: AppConstants.booksCardTitle1,
            imagePath: AppAssets.booksImage1,
            textButtonText: AppConstants.booksCardButtonText,
            routes: Routes.BOOK_DETAILS,
          ),
          BookCards(
            bookTitleText: AppConstants.booksCardTitle2,
            imagePath: AppAssets.booksImage2,
            textButtonText: AppConstants.booksCardButtonText2,
            routes: '',
          ),
        ],
      ),
    );
  }
}
