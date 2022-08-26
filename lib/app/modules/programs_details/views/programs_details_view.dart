import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/check_points.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../controllers/programs_details_controller.dart';

class ProgramsDetailsView extends GetView<ProgramsDetailsController> {
  const ProgramsDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Programs Details',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
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
                'Akasha Healing™\nCertification',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                '''Akasha Healing™ is a life-changing healing method with which you can heal past lives, inner child wounds, ancestral wounding and understand how all three are in fact interconnected and do not stand on their own.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(gap: 15),
              const Text(
                '''Akasha Healing™ is a life-changing healing method with which you can heal past lives, inner child wounds, ancestral wounding and understand how all three are in fact interconnected and do not stand on their own.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                'Become a Certified Akasha Healing™ Practitioner',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                'Fill in the form to download our information packet with program curriculum and pricing details:',
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
                    hintText: 'First Name'),
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
                  hintText: 'Last Name',
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
                    hintText: 'Email'),
              ),
              const VerticalGap(),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Download',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppColors.whiteTextColor,
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
                    backgroundColor: AppColors.buttonColor,
                  ),
                ),
              ),
              const VerticalGap(gap: 15),
              const VerticalGap(),
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
                        'REENA BAHARANI',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text('Medical Doctor'),
                      const VerticalGap(),
                      RatingBar.builder(
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
                        '''“I have worked with other healers and having one session with Sabriyé was the equivalent of 8-10 sessions with someone else.”''',
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
                'Client Results',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(gap: 18),
              const Text(
                '''The Akasha Healing™ method works to help clients find the root cause on a soul path level to their current life struggles. When we heal the root cause, it heals all consecutive timelines in which these wounds were continued to be played out in an attempt to heal them once and for all. In the Akasha Healing™ sessions we address unresolved pain and trauma, such as:''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const CheckBoxPoints(checkBoxPointText: 'Money struggles'),
              const CheckBoxPoints(
                  checkBoxPointText: 'Self-worth & Self-esteem'),
              const CheckBoxPoints(
                  checkBoxPointText: 'Glass ceiling and income plateaus'),
              const CheckBoxPoints(
                  checkBoxPointText: 'Healing narcissistic relationships'),
              const CheckBoxPoints(
                  checkBoxPointText:
                      'Absent or emotionally unavailable father'),
            ],
          ),
        ),
      ),
    );
  }
}
