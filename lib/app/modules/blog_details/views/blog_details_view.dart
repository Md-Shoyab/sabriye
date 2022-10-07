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
        title: Text(
          controller.appTitle,
          style: const TextStyle(
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
      body: FutureBuilder<Map>(
        future: controller.apiServices.getBlogDetailsById(controller.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text('No Data Available'),
              );
            }
            return SingleChildScrollView(
              child: Html(
                data: snapshot.data!['content']['rendered'],
                style: {
                  'h2': Style(
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                    fontSize: FontSize.large,
                  ),
                },
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
