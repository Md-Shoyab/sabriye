import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.aboutText,
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
      body: FutureBuilder<Map>(
        future: controller.apiServices.getAboutInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text('Something went wrong'),
              );
            }
            return SingleChildScrollView(
              child: Html(
                data: snapshot.data!['content']['rendered'],
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

/*
FutureBuilder<Map>(
        future: controller.apiServices.getAboutInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Text('Something went wrong');
            }
          }
          return SingleChildScrollView(
            child: Html(
              data: snapshot.data!['content']['rendered'],
            ),
          );
        },

        ---------
const WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://sabriyeayana.com/about/',
      ),
*/
