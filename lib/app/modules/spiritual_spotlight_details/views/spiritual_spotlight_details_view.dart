import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants/app_colors.dart';
import '../controllers/spiritual_spotlight_details_controller.dart';

class SpiritualSpotlightDetailsView
    extends GetView<SpiritualSpotlightDetailsController> {
  const SpiritualSpotlightDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          '',
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
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerticalGap(gap: 20),
                    Container(
                      height: Get.height * .25,
                      width: Get.width,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                            controller
                                .spiritualSpotlightVideoInterviewImageUrl.value,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: Get.width * .8,
                      child: Text(
                        controller.spiritualSpotlightVideoInterviewTitle.value,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              AppAssets.sabriyeCircleProfile,
                            ),
                          ),
                          const HorizontalGap(gap: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'by Sabriyé Ayana',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const VerticalGap(gap: 5),
                              SizedBox(
                                width: Get.width * .7,
                                child: const Text(
                                    'Bestselling author, new paradigm business, life & soul mentor, founder of the Akasha Healing™ method and the School of Inner Union'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Html(
                        onLinkTap: (url, _, __, ___) async {
                          controller.linkToOpen.value = url!;
                          if (!await launchUrl(
                            controller.linkinHtml,
                            mode: LaunchMode.externalApplication,
                          )) {
                            throw 'Could not launch ${controller.linkinHtml}';
                          }
                        },
                        data: controller
                            .spiritualSpotlightVideoInterviewContent.value,
                        style: {
                          "a": Style(
                            color: AppColor.primaryBrown,
                          ),
                        },
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View All Comments',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColor.primaryBrown,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

/*

SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder<Map>(
              future: controller.apiServices
                  .getSpiritualSpotlightVideoInterViewDetails(controller.id),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('No Data Available'),
                    );
                  }
                  return Html(
                    data: snapshot.data!['content']['rendered'],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.COMMENTS);
              },
              child: const Text(
                'View All Comments',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),

 */
