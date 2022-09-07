import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../controllers/blogs_listing_controller.dart';

class BlogsListingView extends GetView<BlogsListingController> {
  const BlogsListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.blogText,
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
      body: SizedBox(
        height: Get.height,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                index == 0
                    ? Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        height: Get.height * .15,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                            image: AssetImage(AppAssets.libraryBackgroundImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : const SizedBox(),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.BLOG_DETAILS);
                  },
                  child: Container(
                    height: Get.height * .25,
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          controller.blogListImage[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text(
                      controller.blogListTitle[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
