import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/check_points.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/programs_details_controller.dart';

class ProgramsDetailsView extends GetView<ProgramsDetailsController> {
  const ProgramsDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.programDetailsText,
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
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalGap(gap: 20),
              const Text(
                AppConstants.akashaHealingCertificationText,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                AppConstants.programDetailsContent1,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(gap: 15),
              const Text(
                AppConstants.programDetailsContent1,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                AppConstants.becomeAkashaHealingPractitionerText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                AppConstants.fillTheFormDetailsText,
                style: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const VerticalGap(gap: 15),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: AppConstants.firstNameText),
              ),
              const VerticalGap(gap: 15),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: AppConstants.lastNameText,
                ),
              ),
              const VerticalGap(gap: 15),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: AppConstants.emailText),
              ),
              const VerticalGap(),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppConstants.downloadText,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.primaryColor,
                  ),
                ),
              ),
              const VerticalGap(gap: 15),
              const Divider(
                thickness: 1.0,
                indent: 15,
                endIndent: 15,
              ),
              const VerticalGap(),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage(AppAssets.testimonialsProfileImage),
                        radius: 30,
                      ),
                      const VerticalGap(gap: 8),
                      const Text(
                        AppConstants.reenaBaharaniNameText,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(AppConstants.medicalDoctorText),
                      const VerticalGap(),
                      RatingBar.builder(
                        ignoreGestures: true,
                        initialRating: 5.0,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                        itemSize: 20,
                      ),
                      const VerticalGap(),
                      const Text(
                        AppConstants.reenaBaharaniTestimonyText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1.0,
                indent: 15,
                endIndent: 15,
              ),
              const VerticalGap(),
              const Text(
                AppConstants.clientResultText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(gap: 18),
              const Text(
                AppConstants.clientResultContentText,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              SizedBox(
                height: Get.height,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.clientResultPointsList.length,
                  itemBuilder: ((context, index) => CheckBoxPoints(
                        checkBoxPointText:
                            controller.clientResultPointsList[index],
                      )),
                ),
              ),
              const VerticalGap(gap: 100),
            ],
          ),
        ),
      ),
    );
  }
}
