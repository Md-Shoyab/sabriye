import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
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
                  const VerticalGap(gap: 22),
                  SizedBox(
                    height: Get.height * .15,
                    child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            width: Get.width * .45,
                            color: Colors.green,
                          )),
                    ),
                  ),
                  SizedBox(
                    child: Html(
                      data: controller.blogDetailString.value,
                      style: {
                        "a": Style(color: AppColor.primaryBrown),
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
