import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../controllers/giving_back_controller.dart';

class GivingBackView extends GetView<GivingBackController> {
  const GivingBackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.givingBackText,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FutureBuilder<Map>(
              future: controller.apiServices.getGivingBackInfo(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return const Center(child: Text('Something went wrong'));
                  }
                  controller.carouselImages.addAll([
                    snapshot.data!['custom_fields']['Kiva'][0],
                    snapshot.data!['custom_fields']['ketto'][0],
                    snapshot.data!['custom_fields']['milaap_2'][0],
                  ]);
                  controller.carouselDescription.addAll([
                    snapshot.data!['custom_fields']['kiva_desc'][0],
                    snapshot.data!['custom_fields']['ketto_desc'][0],
                    snapshot.data!['custom_fields']['milaap_2_desc'][0],
                  ]);

                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const VerticalGap(gap: 50),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            snapshot.data?['title']['rendered'],
                            style: const TextStyle(
                              fontSize: 25,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Html(
                          data: snapshot.data!['content']['rendered'],
                          style: {
                            "h2": Style(color: AppColors.primaryColor),
                          },
                        ),
                        Container(
                          height: Get.height * .35,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.lightprimary.withOpacity(0.5),
                                blurRadius: 6.0,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 120,
                                width: 200,
                                child: Image.network(
                                  snapshot.data?['custom_fields']['smart'][0],
                                ),
                              ),
                              Html(
                                data: snapshot.data?['custom_fields']
                                    ['smart_desc'][0],
                                style: {
                                  "a": Style(color: AppColors.primaryColor),
                                  "p": Style(
                                    lineHeight: LineHeight.number(1.3),
                                  ),
                                },
                              ),
                            ],
                          ),
                        ),
                        const VerticalGap(),
                        Container(
                          height: Get.height * .35,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.lightprimary.withOpacity(0.5),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 120,
                                width: 200,
                                child: Image.network(
                                  snapshot.data?['custom_fields']['treesisters']
                                      [0],
                                ),
                              ),
                              const VerticalGap(),
                              Html(
                                data: snapshot.data?['custom_fields']
                                    ['treesisters_desc'][0],
                                style: {
                                  "a": Style(color: AppColors.primaryColor),
                                },
                              ),
                            ],
                          ),
                        ),
                        const VerticalGap(),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 170,
                          width: Get.width,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                snapshot.data?['custom_fields']
                                    ['Spending_actual_\$\$\$_image'][0],
                              ),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.white.withOpacity(0.7),
                                BlendMode.screen,
                              ),
                            ),
                          ),
                          child: Html(
                            data: snapshot.data?['custom_fields']
                                ['Spending_actual_\$\$\$'][0],
                            style: {
                              "h2": Style(
                                color: AppColors.lightprimary,
                              ),
                            },
                          ),
                        ),
                        Center(
                          child: CarouselSlider.builder(
                            itemCount: controller.carouselDescription.length,
                            itemBuilder: (_, i, k) => Container(
                              width: Get.width,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 2.0,
                                    color: AppColors.primaryColor,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 80,
                                    child: Image.network(
                                      controller.carouselImages[i],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const VerticalGap(gap: 15),
                                  Html(
                                    data: controller.carouselDescription[i],
                                  ),
                                ],
                              ),
                            ),
                            options: CarouselOptions(
                              height: 350,
                              aspectRatio: 2 / 1,
                              viewportFraction: .99,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: false,
                              autoPlayInterval: const Duration(seconds: 2),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: false,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, _) {
                                controller.changeIndexOnCasrosleSlide(index);
                              },
                            ),
                          ),
                        ),
                        const VerticalGap(),
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  border:
                                      controller.currentCardIndex.value == index
                                          ? null
                                          : Border.all(
                                              color: AppColors.primaryColor),
                                  color:
                                      controller.currentCardIndex.value == index
                                          ? AppColors.primaryColor
                                          : AppColors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            FutureBuilder<Map>(
              future: controller.apiServices.getGivingBackInfo2(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('Something went wrong'),
                    );
                  }
                  return SingleChildScrollView(
                    child: Html(
                      data: snapshot.data!['content']['rendered'],
                      style: {
                        "h2": Style(color: AppColors.primaryColor),
                        "h4": Style(color: AppColors.primaryColor),
                      },
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
