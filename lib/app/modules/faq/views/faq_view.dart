import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/faq_list_tile.dart';
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
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                children: [
                  Html(data: controller.faqText.value),
                  Container(
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
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            controller.faqCategoriesTitleList[0],
                            style: const TextStyle(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              controller.isInnerCircleExpanded.toggle();
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_down_sharp,
                            ),
                          ),
                        ),
                        controller.isInnerCircleExpanded.value
                            ? SizedBox(
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  clipBehavior: Clip.none,
                                  shrinkWrap: true,
                                  reverse: true,
                                  itemCount: 3,
                                  itemBuilder: ((context, index) => FaqListTile(
                                        answer: controller.faqAnswerList[index],
                                        question:
                                            controller.faqQuestionList[index],
                                      )),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  Container(
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
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            controller.faqCategoriesTitleList[1],
                            style: const TextStyle(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              controller.isTeachingsExpanded.toggle();
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_down_sharp,
                            ),
                          ),
                        ),
                        controller.isTeachingsExpanded.value
                            ? SizedBox(
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  clipBehavior: Clip.none,
                                  shrinkWrap: true,
                                  itemCount: 3,
                                  itemBuilder: ((context, index) => FaqListTile(
                                        answer: controller
                                            .faqTeachingsAnswerList[index],
                                        question: controller
                                            .faqTeachingsQuestionList[index],
                                      )),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  Container(
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
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            controller.faqCategoriesTitleList[2],
                            style: const TextStyle(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              controller.isAccountExpanded.toggle();
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_down_sharp,
                            ),
                          ),
                        ),
                        controller.isAccountExpanded.value
                            ? SizedBox(
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  clipBehavior: Clip.none,
                                  shrinkWrap: true,
                                  reverse: true,
                                  itemCount: 3,
                                  itemBuilder: ((context, index) => FaqListTile(
                                        answer: controller
                                            .faqAccountsAnswerList[index],
                                        question: controller
                                            .faqAccountsQuestionList[index],
                                      )),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  Container(
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
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            controller.faqCategoriesTitleList[3],
                            style: const TextStyle(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              controller.isTroubleshootExpanded.toggle();
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_down_sharp,
                            ),
                          ),
                        ),
                        controller.isTroubleshootExpanded.value
                            ? SizedBox(
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  clipBehavior: Clip.none,
                                  shrinkWrap: true,
                                  reverse: true,
                                  itemCount: 3,
                                  itemBuilder: ((context, index) => FaqListTile(
                                        answer: controller
                                            .faqTeachingsAnswerList[index],
                                        question: controller
                                            .faqTeachingsQuestionList[index],
                                      )),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
