import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/check_points.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/gapper.dart';
import '../controllers/akasha_healing_full_details_controller.dart';

class AkashaHealingFullDetailsView
    extends GetView<AkashaHealingFullDetailsController> {
  const AkashaHealingFullDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          '',
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                    height: 140,
                    width: Get.width * .25,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image:
                            AssetImage(AppAssets.akshayHealingSabriyeProfile),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      height: 150,
                      child: Column(
                        children: const [
                          Text(
                            'Akasha Healing™ Journey with Sabriyé Ayana',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          VerticalGap(),
                          Text(
                            'Are you ready to be, do and have what your soul desires? It’s time to claim what is yours by Divine right!',
                            style: TextStyle(
                              height: 1.2,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalGap(),
              Row(
                children: [
                  Container(
                    width: Get.width * .5,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'The Secret to Unlocking Heaven on Earth',
                          style: TextStyle(
                            fontSize: 18,
                            height: 1.4,
                          ),
                        ),
                        VerticalGap(),
                        Text(
                            'Is healing trauma and karma across multiple timelines.'),
                      ],
                    ),
                  ),
                  const HorizontalGap(),
                  Expanded(
                    child: SizedBox(
                      height: 125,
                      child: Image.asset(
                        AppAssets.programImage1,
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              ),
              const VerticalGap(),
              const Text(
                '''Are you looking to fully unlock your soul gifts and create a legacy both financially as well as spiritually, mentally, and emotionally for generations to come in your business and your personal life?''',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
              const VerticalGap(gap: 20),
              const Text(
                '''Then you have finally found what you are looking for. Akasha Healing™ is the most profound and revolutionary healing method currently available to help you heal your deepest life struggles that other healing modalities were not able to reach.
        
Many of my clients are therapists, psychologists, psychiatrists, healers, new paradigm leaders, and (spiritual) business owners that have tried everything else to no avail, only to reach huge breakthroughs and lasting transformation in sometimes as little as one single Akasha Healing™ session.
        
Over the past 7 years, I have helped over a thousand clients just like you unlock their soul missions, their soul legacies, their soul partnerships, and tap into their cosmic bank accounts through healing the unresolved pain and trauma that they still carry from past lives, their ancestry, and childhood.
        
It’s these unresolved wounds from the past that are holding you back and having you subconsciously sabotage yourself, your life, your relationships, your finances, and your soul calling – when we are meant to have it all. It’s our Divine Birthright.
        
I am here to help you unlock Heaven on Earth.''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                ),
              ),
              const VerticalGap(gap: 20),
              const Text(
                'Find the root cause of your current life struggles',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
              const VerticalGap(gap: 25),
              const Text(
                '''The Akasha Healing™ method helps you find the root cause on a soul path level to your current life struggles. When you heal the root cause, it heals all consecutive timelines in which these wounds were continued to be played out. Often in as little as one session, we can break deep patterns by finding the original wound that created the pattern.

In the Akasha Healing™ sessions, we address issues such as:''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                ),
              ),
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
              const CheckBoxPoints(
                  checkBoxPointText: 'Ancestral or transgenerational trauma'),
              const CheckBoxPoints(checkBoxPointText: 'Soul legacy wound'),
              const CheckBoxPoints(checkBoxPointText: 'Visibility struggles'),
              const CheckBoxPoints(
                  checkBoxPointText: 'Getting off the victim triangle'),
              const CheckBoxPoints(
                  checkBoxPointText: 'Bad luck in love relationships'),
              const CheckBoxPoints(
                  checkBoxPointText:
                      'Overcoming the loss of a child, birth & abortion trauma'),
              const CheckBoxPoints(
                  checkBoxPointText: 'Self-love & Self-forgiveness'),
              const VerticalGap(),
              const Text(
                'What is Akasha Healing™?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const VerticalGap(),
              const Text(
                '''Akasha Healing™ is a revolutionary healing method that helps you release unprocessed trauma, karma and vibrational residue from this lifetime and previous lifetimes. Allowing you to reprogram deep subconscious beliefs, release fears and phobias that are limiting you and retrieve aspects of the soul that were disowned or ‘lost’ in other timelines.

The soul itself remains pure and unscathed throughout the incarnation process. All our wounding throughout all timelines only accumulates on an ego level, creating the wounded and fragmented ego. When one heals the wounded ego it reactivates the Divine (soul) Blueprint that has always remained immaculate within the soul realm. Creating as above, so below which allows us to fully embody our soul in the physical realm without the previous distortions that were created through the perception of the wounded ego – who sees itself separated, instead of at one with the soul.''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
