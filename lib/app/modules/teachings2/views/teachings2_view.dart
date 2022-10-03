import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../controllers/teachings2_controller.dart';

class Teachings2View extends GetView<Teachings2Controller> {
  const Teachings2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: Text(
          controller.appTitle,
          style: const TextStyle(
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
      body: FutureBuilder<List>(
        future: controller.apiServices
            .getAllBlogsByTeachingsSubCategories(controller.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(child: Text('0 Categories avaialible'));
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    index == 0
                        ? Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 10),
                            height: Get.height * .2,
                            child: Image.asset(
                              AppAssets.angleBackgroundImage,
                              fit: BoxFit.cover,
                            ),
                          )
                        : const SizedBox(),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.TEACHINGS_DETAILS, arguments: {
                          'id': snapshot.data?[index]['id'],
                          'appTitle': snapshot.data?[index]['title']
                              ['rendered'],
                        });
                      },
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: Get.height * .23,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              snapshot.data![index]
                                  ['jetpack_featured_media_url'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 20),
                          child: Text(
                            snapshot.data![index]['title']['rendered'],
                            style: const TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
