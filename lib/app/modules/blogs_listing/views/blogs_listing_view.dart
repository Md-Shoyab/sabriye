import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import 'package:sabriye/app/widgets/blog_post_card.dart';
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
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Image.network(controller.bannerImageUrl.value),
                  SizedBox(
                    height: Get.height * .77,
                    child: ListView.builder(
                      itemCount: controller.blogsLists.length,
                      itemBuilder: (context, index) => PostCards(
                        index: index,
                        imagePath: controller.blogsLists[index]['thumbnail'],
                        title: controller.blogsLists[index]['title']
                            ['rendered'],
                        id: controller.blogsLists[index]['id'],
                        appTitle: controller.blogsLists[index]['title']
                            ['rendered'],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
