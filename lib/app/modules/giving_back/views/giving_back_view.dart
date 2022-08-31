import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/foundation_cards.dart';
import '../../../widgets/spiritual_guiding_points.dart';
import '../controllers/giving_back_controller.dart';

class GivingBackView extends GetView<GivingBackController> {
  const GivingBackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Giving Back',
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
        child: SizedBox(
          width: Get.width,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.givingBackBannerImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const VerticalGap(gap: 30),
              Container(
                width: Get.width,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Giving Back',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VerticalGap(gap: 15),
                    const Text('WE WANT TO BE A FORCE OF GOOD IN THE WORLD'),
                    const VerticalGap(gap: 20),
                    const Text(
                      'Giving back is an important part of our business model. We want to be a force of good in the world, not only through what we put out in content, products, services but also through spending actual \$\$\$ on projects and initiatives that touch our heart.',
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.3,
                      ),
                    ),
                    const VerticalGap(gap: 50),
                    const Text(
                      'Initiatives that touch our heart.',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const VerticalGap(gap: 15),
                    const Text(
                      'CURRENT ONGOING INITIATIVES:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    const FoundationCards(
                      cardContent:
                          'Educating people on sexual abuse, child sex trafficking, and child sex slavery through Elizabethsmartfoundation.org. Elizabeth is herself a survivor of abduction and sex enslavement as a child. The sexual exploitation of children is the biggest pandemic of our time. A truly enlightened society does not prey on their most vulnerable, but protects and nourishes them.',
                      imagePath: AppAssets.eSFLogo,
                    ),
                    const VerticalGap(gap: 20),
                    const FoundationCards(
                      cardContent:
                          'Planting trees, reforesting rain forests worldwide through Treesisters.org. Planting trees is one of the most important ways that we can reverse climate change, and leave this world a better place for our children and grandchildren.',
                      imagePath: AppAssets.treeSisterLogo,
                    ),
                    const VerticalGap(gap: 20),
                    Container(
                      height: 170,
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: const AssetImage(AppAssets.spendingMoney),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.5), BlendMode.screen),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          VerticalGap(gap: 25),
                          Text(
                            'Spending actual \$\$\$ on projects & initiatives',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                            ),
                          ),
                          VerticalGap(),
                          Text(
                            'PREVIOUS PROJECTS:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    Center(
                      child: Container(
                        height: 230,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    const Text(
                      'The 7 spiritual guiding principles of our company',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    const Text(
                      'THIS IS HOW WE SHOW UP IN THE WORLD',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const VerticalGap(gap: 15),
                    Container(
                      height: 400,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppAssets.givingBackSabriye),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SpiritualGudingPoints(
                      pointContent:
                          'we don’t believe in superficial solutions or quick fixes. No spiritual bypassing. We love to go deep and really face what needs to be faced so that it can be released once and for all. All our products and services are built on this principle.',
                      pointTitle: '1. We love to go deep',
                    ),
                    const SpiritualGudingPoints(
                      pointContent:
                          'we don’t believe in superficial solutions or quick fixes. No spiritual bypassing. We love to go deep and really face what needs to be faced so that it can be released once and for all. All our products and services are built on this principle.',
                      pointTitle: '2. We say it like it is',
                    ),
                    const SpiritualGudingPoints(
                      pointContent:
                          'we don’t believe in superficial solutions or quick fixes. No spiritual bypassing. We love to go deep and really face what needs to be faced so that it can be released once and for all. All our products and services are built on this principle.',
                      pointTitle: '3. We are here to change the world',
                    ),
                    const SpiritualGudingPoints(
                      pointContent:
                          'we don’t believe in superficial solutions or quick fixes. No spiritual bypassing. We love to go deep and really face what needs to be faced so that it can be released once and for all. All our products and services are built on this principle.',
                      pointTitle: '4. We shift paradigms',
                    ),
                    const SpiritualGudingPoints(
                      pointContent:
                          'we don’t believe in superficial solutions or quick fixes. No spiritual bypassing. We love to go deep and really face what needs to be faced so that it can be released once and for all. All our products and services are built on this principle.',
                      pointTitle: '5. We have got your back',
                    ),
                    const SpiritualGudingPoints(
                      pointContent:
                          'we don’t believe in superficial solutions or quick fixes. No spiritual bypassing. We love to go deep and really face what needs to be faced so that it can be released once and for all. All our products and services are built on this principle.',
                      pointTitle: '6. We love you',
                    ),
                    const SpiritualGudingPoints(
                      pointContent:
                          'we don’t believe in superficial solutions or quick fixes. No spiritual bypassing. We love to go deep and really face what needs to be faced so that it can be released once and for all. All our products and services are built on this principle.',
                      pointTitle:
                          '7. We are committed to our own growth and healing',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
