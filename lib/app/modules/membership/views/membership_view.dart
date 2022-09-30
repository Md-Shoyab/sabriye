import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../../model/membership_accordion.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/annual_membership_card.dart';
import '../../../widgets/membership_bulletpoints.dart';
import '../../../widgets/one_month_plan_card.dart';
import '../../../widgets/other_membership_card.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 161,
              width: Get.width,
              margin: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppAssets.memberhsipBannerImage,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const VerticalGap(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: const Text(
                'The Inner Learning Circle. Join us today risk-free!',
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: const Text(
                'Get Instant Access to Spiritual teachings on Healing the subconscious, Inner Union, Ascension, 5D or Heaven on Earth, Past Lives, Law of Attraction, Soul Partnerships, and more! You can join on a trial, or a monthly or annual membership if you want to feel into the vibe and teachings first before you dive in deep.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: AppColors.primaryColor,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Obx(() {
                return ExpansionPanelList(
                    dividerColor: Colors.white,
                    expandedHeaderPadding: EdgeInsets.zero,
                    elevation: 0,
                    expansionCallback: (panelIndex, isExpanded) {
                      controller.membershipAccordionItem[panelIndex].isExpanded!
                          .value = !isExpanded;
                    },
                    children: controller.membershipAccordionItem
                        .map<ExpansionPanel>((MemberShipAccordionItem item) {
                      return ExpansionPanel(
                          canTapOnHeader: true,
                          headerBuilder: ((context, isExpanded) {
                            return Container(
                              margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                item.header!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            );
                          }),
                          body: Container(
                            alignment: Alignment.topLeft,
                            child: Container(
                                margin:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                child: Text(
                                  item.body!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      height: 1.5,
                                      fontSize: 14),
                                  textAlign: TextAlign.left,
                                )),
                          ),
                          isExpanded: item.isExpanded!.value);
                    }).toList());
              }),
            ),
            const VerticalGap(gap: 20),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              child: const Text(
                'Join today and receive:',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: const [
                  BulletPoints(
                    bulletText: 'High-level Spiritual teachings.',
                  ),
                  VerticalGap(),
                  BulletPoints(
                    bulletText: 'In the Spiritual Spotlight Video Interviews.',
                  ),
                  VerticalGap(),
                  BulletPoints(
                    bulletText: 'Inner Union Oracle Pick-a-Card Readings.',
                  ),
                ],
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: const [
                  Positioned(left: -3, child: OneWeekTrialPlan()),
                  Positioned(right: 1, child: OneMonthPlanCard()),
                  Align(child: MembershipPlanCard()),
                ],
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                '''The Inner Learning Circle is for new paradigm shifters and leaders ready to unlock the frequency of Heaven on Earth and take their manifesting to the Soul level. It doesn’t matter if you identify with being a Spiritual seeker, Lightworker, Starseed, Twin Soul or Flame, Soulmate, Lightbearer, Goddess, Queen, Wild Woman, or none of the above. The Inner Learning Circle is for everyone, who wants to manifest Heaven on Earth (5D) as their physical reality.''',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
