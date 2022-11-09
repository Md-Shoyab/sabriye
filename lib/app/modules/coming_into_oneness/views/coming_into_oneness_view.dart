import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/coming_into_oneness_controller.dart';

class ComingIntoOnenessView extends GetView<ComingIntoOnenessController> {
  const ComingIntoOnenessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Coming Into Oneness',
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder<Map>(
                future: controller.apiServices.getComingIntoOneness(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Center(
                        child: Text('Something went wrong'),
                      );
                    }
                    return Html(
                      data: snapshot.data!['content']['rendered'],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              const VerticalGap(),
              const Center(
                child: Text(
                  'The Four Stages of Inner Union',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const VerticalGap(gap: 20),
              Center(
                child: Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      color: controller.showValue.value
                          ? Colors.transparent
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          controller.showValue.value
                              ? AppAssets.accordionBackground
                              : AppAssets.transparentBackground,
                        ),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: controller.showValue.value
                              ? Colors.transparent
                              : AppColors.lightprimary.withOpacity(0.4),
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            controller.title,
                            style: TextStyle(
                              fontSize: 18,
                              color: controller.showValue.value
                                  ? AppColors.white
                                  : AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              controller.showValue.value =
                                  !controller.showValue.value;
                            },
                            icon: Icon(
                              controller.showValue.value
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: controller.showValue.value
                                  ? AppColors.white
                                  : AppColors.primaryColor,
                            ),
                          ),
                        ),
                        controller.showValue.value
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                child: Text(
                                  controller.content,
                                  style: const TextStyle(
                                    color: AppColors.white,
                                  ),
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
              ),
              const VerticalGap(gap: 30),
              FutureBuilder<Map>(
                future: controller.apiServices
                    .getTheProgramDetailsComingInOneness(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Center(
                        child: Text('No Testimonials available'),
                      );
                    }
                    return Html(
                      data: snapshot.data!['content']['rendered'],
                      style: {
                        "h2": Style(color: AppColors.primaryColor),
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              ),
              const VerticalGap(gap: 20),
              const Divider(
                height: 1.3,
                color: Colors.grey,
              ),
              FutureBuilder<Map>(
                future: controller.apiServices.getPattyTestimonial(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Center(
                        child: Text('No Testimonials available'),
                      );
                    }
                    return Container(
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(AppAssets.pattyProfile),
                          ),
                          const VerticalGap(gap: 5),
                          Text(
                            snapshot.data!['title']['rendered'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          const VerticalGap(gap: 5),
                          // const Text(
                          //   'United States',
                          //   style: TextStyle(
                          //     fontSize: 15,
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          const VerticalGap(),
                          Html(
                            data: snapshot.data!['content']['rendered'],
                            style: {
                              "p": Style(alignment: Alignment.center),
                            },
                          ),
                        ],
                      ),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              ),
              const Divider(
                height: 1.3,
                color: Colors.grey,
              ),
              const VerticalGap(gap: 20),
              FutureBuilder<Map>(
                future: controller.apiServices.getWhoIsComingInOneness(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Center(
                        child: Text('No Testimonials available'),
                      );
                    }
                    return Html(
                      data: snapshot.data!['content']['rendered'],
                      style: {
                        "h2": Style(color: AppColors.primaryColor),
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
