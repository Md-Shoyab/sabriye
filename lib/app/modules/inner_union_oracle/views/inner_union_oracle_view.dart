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
      body: Column(
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
          Container(
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
          const VerticalGap(gap: 30),
          const Text(
            'Pick A Card And Ask Your Soul For Advice',
            style: TextStyle(
              color: AppColors.themeTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const VerticalGap(gap: 20),
          const Text(
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
          ),
        ],
      ),
    );
  }
}

class InnerUnionPointers extends StatelessWidget {
  final String pointNumber;
  final String pointText;

  const InnerUnionPointers({
    Key? key,
    required this.pointNumber,
    required this.pointText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20),
      child: Row(
        children: [
          Text(
            pointNumber,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: AppColors.themeTextColor,
            ),
          ),
          const HorizontalGap(),
          Text(
            pointText,
            style: const TextStyle(
              color: AppColors.themeTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
