import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/blog_post_card.dart';
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
        child: FutureBuilder<List>(
          future: controller.post.getAllPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return const Center(child: Text('0 post avaialible'));
              }
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: ((context, index) {
                    Map wpPost = snapshot.data?[index];
                    String title = wpPost['title']['rendered'];
                    return PostCards(
                      index: index,
                      imagePath: wpPost['jetpack_featured_media_url'] ??
                          'https://sabriyeayana.com/wp-content/uploads/2022/08/kundalini-awakening.jpg',
                      title: title,
                    );
                  }));
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
