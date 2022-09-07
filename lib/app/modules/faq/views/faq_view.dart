import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/faq_card.dart';
import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  const FaqView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.faqText,
          style: TextStyle(
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Center(
                child: Text(
                  AppConstants.frequentlyAskedQuestion,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              VerticalGap(),
              Center(
                child: Text(
                  AppConstants.frequentlyAskedQuestionSubtitleText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    height: 1.5,
                  ),
                ),
              ),
              VerticalGap(gap: 50),
              Center(
                child: Text(
                  AppConstants.innerUnionCircleFaqText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              VerticalGap(gap: 20),
              Text(
                AppConstants.schoolOfinnerUnionFaqContentText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.3,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.fAQCardTitle1,
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.fAQCardTitle2,
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.fAQCardTitle3,
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.fAQCardTitle4,
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  AppConstants.schoolOfinnerUnionFaqText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              VerticalGap(gap: 30),
              Text(
                AppConstants.schoolOfinnerUnionFaqContentText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.3,
                  fontSize: 16,
                ),
              ),
              VerticalGap(gap: 30),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.schoolFAQCardTitle1,
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.schoolFAQCardTitle2,
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.schoolFAQCardTitle3,
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.schoolFAQCardTitle4,
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.schoolFAQCardTitle5,
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent: AppConstants.fAQCardContent1,
                title: AppConstants.schoolFAQCardTitle6,
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
