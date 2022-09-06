import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/related_posts.dart';
import '../controllers/blog_details_controller.dart';

class BlogDetailsView extends GetView<BlogDetailsController> {
  const BlogDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.blogDetails,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * .225,
              child: ListView.builder(
                itemCount: controller.relatedPostImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => RelatedPost(
                      controller: controller,
                      index: index,
                    )),
              ),
            ),
            const VerticalGap(),
            const Center(child: Text('Dots Indicator')),
            Center(
              child: Container(
                height: 200,
                width: Get.width * .9,
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.blogImage1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              width: Get.width * .9,
              child: const Text(
                AppConstants.blogPostTitle1,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const VerticalGap(),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(AppAssets.sabriyeCircleProfile),
                  ),
                  const HorizontalGap(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          AppConstants.bySabriyeAyanaText,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        VerticalGap(gap: 8),
                        Text(
                          AppConstants.aboutPostAuthor,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                AppConstants.readingTime8,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                AppConstants.blogDetailsContent,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const VerticalGap(gap: 80),
          ],
        ),
      ),
    );
  }
}
