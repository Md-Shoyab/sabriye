import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/session_details_controller.dart';

class SessionDetailsView extends GetView<SessionDetailsController> {
  const SessionDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Sessions Details',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  height: 150,
                  width: Get.width * .35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(AppAssets.akshayHealingSabriyeProfile),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5, 20, 5, 0),
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Text(
                'What is Akasha Healing™?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                '''Akasha Healing™ is a revolutionary healing method that helps you release unprocessed trauma, karma and vibrational residue from this lifetime and previous lifetimes. Allowing you to reprogram deep subconscious beliefs, release fears and phobias that are limiting you and retrieve aspects of the soul that were disowned or ‘lost’ in other timelines.
      
The soul itself remains pure and unscathed throughout the incarnation process. All our wounding throughout all timelines only accumulates on an ego level, creating the wounded and fragmented ego. When one heals the wounded ego it reactivates the Divine (soul) Blueprint that has always remained immaculate within the soul realm. Creating as above, so below which allows us to fully embody our soul in the physical realm without the previous distortions that were created through the perception of the wounded ego – who sees itself separated, instead of at one with the soul.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
              ),
            ),
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
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'Book your session',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                '''Select the one-off session or package of your choice by using the ‘buy now!’ button under it. This will bring you to our Thrivecart checkout, where you can pay through PayPal or Credit Card as well as Google Pay or Apple Pay.
      
After successful payment you will receive an email with a link to Sabriyé’s online calendar and instructions on how to prepare for your session(s). If you do not receive this email within one hour please contact our support team for further assistance.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 30,
              ),
              child: const Text(
                'One-Off sessions:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: Get.height * .9,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) => const SessionCards()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SessionCards extends StatelessWidget {
  const SessionCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width * .9,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.whiteTextColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: AppColors.bgLight,
            ),
          ],
          image: const DecorationImage(
            scale: 0.7,
            alignment: Alignment.bottomRight,
            image: AssetImage(AppAssets.flowerImage),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalGap(),
            const Text(
              'Three Timelines Healing €1111',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const VerticalGap(),
            const Text(
              '''Akasha Healing™ works on the three timelines of the past: our childhood, ancestral baggage and past lives. Sometimes no matter how hard we try we can’t seem to create what we want.''',
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.5,
                fontSize: 15,
              ),
            ),
            const VerticalGap(gap: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteTextColor,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: AppColors.buttonColor,
                  ),
                ),
                const HorizontalGap(gap: 30),
                const Text(
                  'Know More',
                  style: TextStyle(
                    color: AppColors.themeTextColor,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
