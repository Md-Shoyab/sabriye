import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/font_names.dart';
import '../../../widgets/gapper.dart';
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
            fontFamily: FontName.sourceSansPro,
            color: AppColors.brownColor,
            fontWeight: FontWeight.w700,
            fontSize: 20,
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
                  const VerticalGap(gap: 20),
                  Html(data: controller.akashaHealingIntro.value),
                  const VerticalGap(gap: 20),
                  const Text(
                    AppConstants.becomeAkashaHealingPractitionerText,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: AppColors.primaryColor,
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
                  Form(
                    key: controller.emailFormKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          validator: (value) =>
                              controller.validateFirstName(value!),
                          controller: controller.fnameController,
                          cursorColor: AppColors.primaryColor,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: AppColors.primaryColor,
                                width: 2.0,
                              ),
                            ),
                            hintText: AppConstants.firstNameText,
                          ),
                        ),
                        const VerticalGap(gap: 15),
                        TextFormField(
                          controller: controller.lnameController,
                          validator: (value) =>
                              controller.validateLastName(value!),
                          cursorColor: AppColors.primaryColor,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: AppColors.primaryColor,
                                width: 2.0,
                              ),
                            ),
                            hintText: AppConstants.lastNameText,
                          ),
                        ),
                        const VerticalGap(gap: 15),
                        TextFormField(
                          validator: (value) => controller.validateEmail(value),
                          controller: controller.emailController,
                          cursorColor: AppColors.primaryColor,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: AppColors.primaryColor,
                                width: 2.0,
                              ),
                            ),
                            hintText: AppConstants.emailText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalGap(),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // if (controller.emailFormKey.currentState!.validate()) {
                        //   controller.apiServices.captureEmail(
                        //     controller.emailController.text.trim(),
                        //     '${controller.fnameController.text.trim()} ${controller.lnameController.text.trim()}',
                        //   );
                        // }
                      },
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
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                controller.testimonyImageUrl.value),
                            radius: 30,
                          ),
                          const VerticalGap(gap: 8),
                          Text(
                            controller.testimonyUserName.value
                                .replaceAll('—', ''),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            AppConstants.newZealandText,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const VerticalGap(gap: 5),
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
                          Html(
                            data: controller.testimonyContent.value,
                            style: {
                              "p": Style(
                                textAlign: TextAlign.center,
                                lineHeight: LineHeight.number(1.2),
                              ),
                            },
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
                  Html(data: controller.clientResults.value),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
      ),
    );
  }
}
