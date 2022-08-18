import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
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
          'Books & Ebooks',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: const [
          VerticalGap(gap: 20),
          BookCards(
            bookTitleText: 'The Ultimate Guide to\nInner Union',
            imagePath: AppAssets.booksImage1,
            textButtonText: 'Download the E-Book',
          ),
          BookCards(
            bookTitleText: 'Divine Union : Wisdom\nFrom Leaders...',
            imagePath: AppAssets.booksImage2,
            textButtonText: 'Buy on Amazon',
          ),
        ],
      ),
    );
  }
}
