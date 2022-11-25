import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/membership_accordion.dart';
import '../controllers/membership_controller.dart';

class MembershipView extends GetView<MembershipController> {
  const MembershipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Membership',
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
                padding: const EdgeInsets.symmetric(horizontal: 15),
                children: [
                  const VerticalGap(),
                  Html(
                    data: controller.htmlIntro.value,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: AppColors.lightprimary.withOpacity(0.6),
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      itemCount: controller.accordionList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      reverse: true,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) => Obx(
                        () => MembershipAccordion(
                          accordion: controller.accordionList[index],
                          onAccordionTap: () {
                            controller.changeSelectedAccordion(index);
                          },
                          isAccordionSelected:
                              controller.selectedAccordionIndex.value == index,
                        ),
                      ),
                    ),
                  ),
                  const VerticalGap(),
                  Html(data: controller.checkPointsList.value),
                  const VerticalGap(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  controller.membershipPlansDetails[2]['title']
                                      ['rendered'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Html(
                                data: controller.membershipPlansDetails[2]
                                    ['content']['rendered'],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'FREE',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.lightprimary,
                            ),
                            image: const DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: AssetImage(
                                AppAssets.flowerImage,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 10, 0, 0),
                                child: Text(
                                  controller.membershipPlansDetails[1]['title']
                                      ['rendered'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const VerticalGap(gap: 5),
                              // const Center(
                              //   child: Text(
                              //     'Billed Annually',
                              //     style: TextStyle(
                              //       fontSize: 14,
                              //     ),
                              //   ),
                              // ),
                              Html(
                                data: controller.membershipPlansDetails[1]
                                    ['content']['rendered'],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '€111',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  controller.membershipPlansDetails[0]['title']
                                      ['rendered'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Html(
                                data: controller.membershipPlansDetails[0]
                                    ['content']['rendered'],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 20),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '€',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
