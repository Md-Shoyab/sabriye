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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
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
            FutureBuilder<List>(
              future: controller.apiServices.fourStagesInnerUnion(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('No Data available'),
                    );
                  }
                  return Column(
                    children: [
                      snapshot.hasData
                          ? const Text(
                              'The Four Stages of Inner Union',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          : const CircularProgressIndicator(),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) => Obx(
                          () => Container(
                            margin: const EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                              color: controller.dropDownStatus[index].value
                                  ? Colors.transparent
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  controller.dropDownStatus[index].value
                                      ? AppAssets.accordionBackground
                                      : AppAssets.transparentBackground,
                                ),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: controller.dropDownStatus[index].value
                                      ? Colors.transparent
                                      : AppColors.lightprimary.withOpacity(0.4),
                                  spreadRadius: 1.0,
                                  blurRadius: 3.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                const VerticalGap(),
                                ListTile(
                                  title: Padding(
                                    padding: EdgeInsets.only(
                                      left:
                                          controller.dropDownStatus[index].value
                                              ? 8
                                              : 0,
                                    ),
                                    child: Text(
                                      snapshot.data![index]['title']
                                          ['rendered'],
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: controller
                                                .dropDownStatus[index].value
                                            ? AppColors.white
                                            : AppColors.primaryColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {
                                      controller.dropDownStatus[index].value =
                                          !controller
                                              .dropDownStatus[index].value;
                                    },
                                    icon: Icon(
                                      controller.dropDownStatus[index].value
                                          ? Icons.arrow_drop_up
                                          : Icons.arrow_drop_down,
                                      color:
                                          controller.dropDownStatus[index].value
                                              ? AppColors.white
                                              : AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                                controller.dropDownStatus[index].value
                                    ? Html(
                                        data: snapshot.data![index]['content']
                                            ['rendered'],
                                        style: {
                                          'p': Style(
                                            color: AppColors.white,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 15,
                                            ),
                                          ),
                                        },
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
            ),
            FutureBuilder<Map>(
              future:
                  controller.apiServices.getTheProgramDetailsComingInOneness(),
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
            FutureBuilder<Map>(
              future: controller.apiServices.getPattyTestimonial(),
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('No Testimonials available'),
                    );
                  }
                  return Column(
                    children: [
                      const Divider(
                        height: 1.3,
                        color: Colors.grey,
                      ),
                      Container(
                        width: Get.width,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        child: Column(
                          children: [
                            const CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage(AppAssets.pattyProfile),
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
                            const VerticalGap(),
                            Html(
                              data: snapshot.data!['content']['rendered'],
                              style: {
                                "p": Style(alignment: Alignment.center),
                              },
                            ),
                            const Divider(
                              height: 1.3,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
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
    );
  }
}
