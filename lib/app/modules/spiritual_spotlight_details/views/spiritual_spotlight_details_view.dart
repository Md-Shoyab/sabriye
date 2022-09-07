import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/check_points.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/spiritual_spotlight_details_controller.dart';

class SpiritualSpotlightDetailsView
    extends GetView<SpiritualSpotlightDetailsController> {
  const SpiritualSpotlightDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.spiritualSpotlightDetailsText,
          style: TextStyle(
            color: AppColors.primaryColor,
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
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: Get.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.spiritualSpotlightImage1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const VerticalGap(gap: 20),
              const Text(
                AppConstants.spiritualSpotlightHeadingText,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
              const VerticalGap(gap: 20),
              const Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(AppAssets.profileImage),
                  ),
                  const HorizontalGap(gap: 15),
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
                        VerticalGap(gap: 5),
                        SizedBox(
                          child: Text(
                            AppConstants.aboutPostAuthor,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              const VerticalGap(),
              const Text(
                AppConstants.readingTime3,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(gap: 15),
              Container(
                height: 200,
                width: Get.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssets.spiritualSpotLightVideoImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const VerticalGap(),
              const Text(AppConstants.spiritualSpotlightUnderVideoText),
              const VerticalGap(),
              const CheckBoxPoints(
                checkBoxPointText:
                    AppConstants.spiritualSpotlightCheckBoxPoint1,
              ),
              const CheckBoxPoints(
                checkBoxPointText:
                    AppConstants.spiritualSpotlightCheckBoxPoint2,
              ),
              const CheckBoxPoints(
                  checkBoxPointText:
                      AppConstants.spiritualSpotlightCheckBoxPoint3),
              const CheckBoxPoints(
                checkBoxPointText:
                    AppConstants.spiritualSpotlightCheckBoxPoint4,
              ),
              const CheckBoxPoints(
                checkBoxPointText:
                    AppConstants.spiritualSpotlightCheckBoxPoint5,
              ),
              const VerticalGap(),
              const Center(
                child: Text(
                  AppConstants.theDisempoweredFeminineHeadingText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const VerticalGap(gap: 15),
              const Text(
                AppConstants.theDisempoweredFeminineSubText,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const CheckBoxPoints(
                  checkBoxPointText:
                      AppConstants.theDisempoweredFemininePoint1),
              const CheckBoxPoints(
                  checkBoxPointText:
                      AppConstants.theDisempoweredFemininePoint2),
              const CheckBoxPoints(
                  checkBoxPointText:
                      AppConstants.theDisempoweredFemininePoint3),
              const VerticalGap(gap: 8),
              const Text(AppConstants.thisIsWomenWho),
              const VerticalGap(),
              const CheckBoxPoints(
                checkBoxPointText: AppConstants.womenPoint1,
              ),
              const CheckBoxPoints(
                checkBoxPointText: AppConstants.womenPoint2,
              ),
              const CheckBoxPoints(checkBoxPointText: AppConstants.womenPoint3),
              const CheckBoxPoints(checkBoxPointText: AppConstants.womenPoint4),
              const VerticalGap(),
              const Text(
                AppConstants.spiritualSpotlightContent,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                AppConstants.aboutLauraCamacho,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(gap: 15),
              Container(
                height: 200,
                width: Get.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssets.spiritualSpotlightImage1,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const VerticalGap(gap: 15),
              const Text(
                AppConstants.aboutLauraCamachoPostContent,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                AppConstants.resourceOfAuthor,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              Container(
                height: 40,
                width: 130,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.sabriyeSignature),
                  ),
                ),
              ),
              const VerticalGap(),
              const Text(
                AppConstants.viewAll30Comments,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
