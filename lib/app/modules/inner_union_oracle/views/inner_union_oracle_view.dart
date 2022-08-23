import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/inner_union_oracle_controller.dart';

class InnerUnionOracleView extends GetView<InnerUnionOracleController> {
  const InnerUnionOracleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Inner Union Circle',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 110,
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.innerUnionOrcaleBannerImage),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                height: 71,
                width: 318,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.innerUnionOrcaleTextImage),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const VerticalGap(gap: 30),
            const Center(
              child: Text(
                'Pick A Card And Ask Your Soul For Advice',
                style: TextStyle(
                  color: AppColors.themeTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            /* const Text(
              'Receive a Message From Your Soul in Three Easy\nSteps',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
            const InnerUnionPointers(
              pointNumber: '01',
              pointText:
                  'From a neutral state of mind, ask the question you\nwant a soul led answer to.',
            ),
            const InnerUnionPointers(
              pointNumber: '02',
              pointText:
                  'Click on the card that speaks to you the most to\nreceive the message your Soul has for you.',
            ),
            const InnerUnionPointers(
              pointNumber: '03',
              pointText:
                  'Read the extended card meaning to fully integrate\nthe soul led message being shared with you.',
            ), */
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: const Text(
                'The Inner Union Oracle',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 5,
              ),
              child: const Text(
                '''The Inner Union Oracle is an oracle deck with 108 soul led messages to create Heaven on Earth from the inside out. Heaven on Earth is an energy-frequency state in which all that is yours by Divine Right flows into your life easily and effortlessly.
      
The beautiful higher dimensional oracle messages are based on the Inner Learning Circle Teachings and are offered to guide you in your inner union process, through healing the separation between your ego and your soul.
      
Each card helps you heal a deeper layer of separation and helps you to connect deeper with your soul self. The more you get the ego and the soul on the same page, the deeper you unlock all that is yours by Divine Right in life, love, money, relationships & more. ''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const VerticalGap(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: const Text(
                'About The Author',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              height: 200,
              width: Get.width,
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage(AppAssets.innerUnionCircleAuthorImage),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 5,
              ),
              child: const Text(
                '''The Inner Union Oracle is an oracle deck with 108 soul led messages to create Heaven on Earth from the inside out. Heaven on Earth is an energy-frequency state in which all that is yours by Divine Right flows into your life easily and effortlessly.

The beautiful higher dimensional oracle messages are based on the Inner Learning Circle Teachings and are offered to guide you in your inner union process, through healing the separation between your ego and your soul.

Each card helps you heal a deeper layer of separation and helps you to connect deeper with your soul self. The more you get the ego and the soul on the same page, the deeper you unlock all that is yours by Divine Right in life, love, money, relationships & more.''',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
