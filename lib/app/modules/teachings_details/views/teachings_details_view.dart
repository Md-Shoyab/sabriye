import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../controllers/teachings_details_controller.dart';

class TeachingsDetailsView extends GetView<TeachingsDetailsController> {
  const TeachingsDetailsView({Key? key}) : super(key: key);

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
            : ListView(
                children: [
                  const VerticalGap(gap: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: Get.height * .19,
                    child: ListView.builder(
                      itemCount: controller.relatedPostsList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              height: 90,
                              width: 131,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    controller.relatedPostsList[index]
                                        ['thumbnail'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const VerticalGap(gap: 5),
                            Container(
                              width: 131,
                              margin: const EdgeInsets.only(left: 8),
                              child: Text(
                                controller.relatedPostsList[index]['title']
                                    ['rendered'],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const VerticalGap(gap: 5),
                  Container(
                    height: Get.height * .25,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(controller.teachingImageUrl.value),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      controller.teachingTitle.value,
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
                        const HorizontalGap(),
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
                  const VerticalGap(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text('Read Time 5 mins'),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Html(
                      data: controller.teachingDetailContent.value,
                      style: {
                        "a": Style(color: AppColor.primaryBrown),
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

/*
FutureBuilder<Map>(
        future: controller.apiServices.getBlogDetailsById(controller.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text('No Data Available'),
              );
            }
            return SingleChildScrollView(
              child: Html(
                data: snapshot.data!['content']['rendered'],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),

 */
