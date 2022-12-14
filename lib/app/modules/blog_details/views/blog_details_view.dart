import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../controllers/blog_details_controller.dart';

class BlogDetailsView extends GetView<BlogDetailsController> {
  const BlogDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          '',
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
                children: [
                  Html(
                    data: controller.blogDetailString.value,
                  ),
                ],
              ),
      ),
    );
  }
}

/*
SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder<List>(
              future: controller.apiServices.getRelatedPosts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('0 Related Post'),
                    );
                  }
                  return SizedBox(
                    height: Get.height * .225,
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) => RelatedPost(
                            controller: controller,
                            index: index,
                            imageUrl: snapshot.data?[index]['thumbnail'],
                            title: snapshot.data?[index]['title']['rendered'],
                          )),
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            FutureBuilder<Map>(
              future: controller.apiServices.getBlogDetailsById(controller.id),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('No Data Available'),
                    );
                  }
                  return Html(
                    data: snapshot.data!['content']['rendered'],
                    style: {
                      'h2': Style(
                        maxLines: 2,
                        textOverflow: TextOverflow.ellipsis,
                        fontSize: FontSize.large,
                      ),
                    },
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            const VerticalGap(),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.COMMENTS);
              },
              child: const Text(
                'View All Comments',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
 */