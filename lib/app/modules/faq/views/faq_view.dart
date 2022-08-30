import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
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
          "FAQ's",
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
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
                  'Frequently Asked Questions',
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
                  'Some things to consider or you might be curious to know more about!',
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
                  'The Inner Learning Circle FAQ’s',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              VerticalGap(gap: 20),
              Text(
                '''Are you in the Learning Circle or thinking of joining our online spiritual community? These are the most frequently asked questions around the Inner Learning Circle answered for you. If your question is not in the FAQ’s please contact us. Our Support
      team will be happy to help you!
      
      
      You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.3,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'The Inner Circle:',
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'The Teachings:',
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'Managing My Account:',
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'Troubleshooting:',
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'School of Inner Union (SIU) FAQ’s',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              VerticalGap(gap: 30),
              Text(
                '''Are you an SIU student or are you considering enrolling into the School of Inner Union? Here are the most frequently asked questions and answers about SIU. If your question is not in the FAQ’s please contact us. Our Support team will be happy to help you!''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.3,
                  fontSize: 16,
                ),
              ),
              VerticalGap(gap: 30),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'Will the Inner Union\nProgram Work For Me If:',
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'Healing',
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'Mastermind Group:',
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'Payment plans:',
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'Managing My Account:',
              ),
              VerticalGap(gap: 20),
              FAQCards(
                bodyContent:
                    'You can contact us through the Facebook Messenger chat at the bottom right-hand corner of every page. Just click on the Messenger icon to open a chat with us. One of our Support team agents will respond as quickly as possible, due to time zone differences this may take up to a couple of hours outside of standard office hours.',
                title: 'Troubleshooting:',
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
