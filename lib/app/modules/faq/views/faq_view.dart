import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/faq_list_tile.dart';
import '../../../widgets/gapper.dart';
import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  const FaqView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.faqText,
          style: TextStyle(
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const VerticalGap(gap: 20),
          FutureBuilder<Map>(
            future: controller.apiServices.getFaqIntro(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text('FAQ Intro not Avaialible'),
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
          const VerticalGap(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            clipBehavior: Clip.none,
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: ((context, index) => FutureBuilder<List>(
                  future: controller.future[index],
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.data!.isEmpty) {
                        return const Center(
                          child: Text('0 FAQ avaialible'),
                        );
                      }
                      return Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: AppColors.lightprimary.withOpacity(0.6),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Obx(
                          () => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text(
                                  controller.faqCategories[index],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    controller.isExpanded[index].value =
                                        !controller.isExpanded[index].value;
                                  },
                                  icon: Icon(
                                    controller.isExpanded[index].value
                                        ? Icons.keyboard_arrow_up_sharp
                                        : Icons.keyboard_arrow_down_sharp,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                              controller.isExpanded[index].value
                                  ? SizedBox(
                                      child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        clipBehavior: Clip.none,
                                        shrinkWrap: true,
                                        itemCount: snapshot.data!.length,
                                        itemBuilder: ((context, index) =>
                                            FaqListTile(
                                              answer: snapshot.data![index]
                                                  ['content']['rendered'],
                                              question: snapshot.data![index]
                                                  ['title']['rendered'],
                                            )),
                                      ),
                                    )
                                  : const SizedBox(
                                      height: 0,
                                      width: 0,
                                    ),
                            ],
                          ),
                        ),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                )),
          ),
          // const Center(
          //   child: Text(
          //     AppConstants.schoolOfinnerUnionFaqText,
          //     style: TextStyle(
          //       fontSize: 18,
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // ),
          // const VerticalGap(gap: 30),
          // const Text(
          //   AppConstants.schoolOfinnerUnionFaqContentText,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     height: 1.3,
          //     fontSize: 16,
          //   ),
          // ),
          // const VerticalGap(gap: 30),
          // const FAQCards(
          //
          // bodyContent: AppConstants.fAQCardContent1,
          //   title: AppConstants.schoolFAQCardTitle1,
          // ),
          // const VerticalGap(gap: 20),
          // const FAQCards(
          //   bodyContent: AppConstants.fAQCardContent1,
          //   title: AppConstants.schoolFAQCardTitle2,
          // ),
          // const VerticalGap(gap: 20),
          // const FAQCards(
          //   bodyContent: AppConstants.fAQCardContent1,
          //   title: AppConstants.schoolFAQCardTitle3,
          // ),
          // const VerticalGap(gap: 20),
          // const FAQCards(
          //   bodyContent: AppConstants.fAQCardContent1,
          //   title: AppConstants.schoolFAQCardTitle4,
          // ),
          // const VerticalGap(gap: 20),
          // const FAQCards(
          //   bodyContent: AppConstants.fAQCardContent1,
          //   title: AppConstants.schoolFAQCardTitle5,
          // ),
          // const VerticalGap(gap: 20),
          // const FAQCards(
          //   bodyContent: AppConstants.fAQCardContent1,
          //   title: AppConstants.schoolFAQCardTitle6,
          // ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
