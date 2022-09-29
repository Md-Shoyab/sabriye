import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../controllers/spiritual_spotlight_controller.dart';

class SpiritualSpotlightView extends GetView<SpiritualSpotlightController> {
  const SpiritualSpotlightView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'In the Spiritual Spotlight',
          style: TextStyle(
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: Get.height,
              child: FutureBuilder<List>(
                future: controller.apiServices
                    .getAllSpritiualSpotlightVideoInterview(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Center(
                          child: Text('0 Categories avaialible'));
                    }
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data?.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed(Routes.SPIRITUAL_SPOTLIGHT_DETAILS,
                                arguments: {
                                  'id': snapshot.data?[index]['id'],
                                });
                          },
                          child: Container(
                            height: Get.height * .27,
                            width: 150,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  snapshot.data?[index]
                                      ['jetpack_featured_media_url'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Image.asset(AppAssets.smallVideoPlayIcon),
                          ),
                        );
                      }),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
