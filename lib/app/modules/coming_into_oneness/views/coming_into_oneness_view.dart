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
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Html(data: controller.comingIntoOnenessIntro.value),
                  const VerticalGap(),
                  const Center(
                    child: Text(
                      'The Four Stages of Inner Union',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const VerticalGap(),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    clipBehavior: Clip.none,
                    reverse: true,
                    shrinkWrap: true,
                    itemCount: controller.dropDownPointsList.length,
                    itemBuilder: (context, index) => Obx(
                      () => ComingIntoOnenessDropDown(
                          dropDown: controller.dropDownPointsList[index],
                          isDropDownSelected:
                              controller.selectedDropDownIndex.value == index,
                          onDropDownTap: () {
                            controller.changeSelectedDropDown(index);
                          }),
                    ),
                  ),
                  Html(data: controller.getProgramDetails.value),
                  Column(
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
                              controller.getPattyTestimonialtitle.value,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            const VerticalGap(),
                            Html(
                              data: controller.getPattyTestimonialContent.value,
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
                  ),
                  Html(data: controller.whoIsCominngForOneness.value),
                ],
              ),
      ),
    );
  }
}

class ComingIntoOnenessDropDown extends StatelessWidget {
  final Map<String, dynamic> dropDown;
  final bool isDropDownSelected;
  final void Function() onDropDownTap;

  const ComingIntoOnenessDropDown({
    Key? key,
    required this.dropDown,
    required this.isDropDownSelected,
    required this.onDropDownTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isDropDownSelected ? Get.height * .35 : null,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isDropDownSelected ? Colors.transparent : AppColors.white,
        boxShadow: [
          BoxShadow(
            color: isDropDownSelected
                ? Colors.transparent
                : AppColors.lightprimary.withOpacity(0.4),
            blurRadius: 3.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(
            isDropDownSelected
                ? AppAssets.accordionBackground
                : AppAssets.transparentBackground,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Padding(
              padding: EdgeInsets.only(left: isDropDownSelected ? 8.0 : 0.0),
              child: Title(
                color: AppColors.primaryColor,
                child: Text(
                  dropDown['title']['rendered'],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: isDropDownSelected
                        ? AppColors.white
                        : AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: onDropDownTap,
              icon: Icon(
                isDropDownSelected
                    ? Icons.keyboard_arrow_up_rounded
                    : Icons.keyboard_arrow_down_rounded,
                color: isDropDownSelected
                    ? AppColors.white
                    : AppColors.primaryColor,
              ),
            ),
          ),
          isDropDownSelected
              ? Html(
                  data: dropDown['content']['rendered'],
                  style: {
                    "p": Style(
                      fontSize: FontSize.medium,
                      color: AppColors.white,
                      lineHeight: LineHeight.number(1.3),
                    ),
                  },
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
