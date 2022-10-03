import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/gapper.dart';
import '../controllers/teachings1_controller.dart';

class Teachings1View extends GetView<Teachings1Controller> {
  const Teachings1View({Key? key}) : super(key: key);

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
        future:
            controller.apiServices.getAllTeachingsSubCategories(controller.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text('0 Sub Categories Found'),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: ((context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    index == 0
                        ? Container(
                            margin: const EdgeInsets.only(
                              bottom: 20,
                              top: 20,
                            ),
                            height: Get.height * .2,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage(AppAssets.angleBackgroundImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : const SizedBox(),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.TEACHINGS2, arguments: {
                          'id': snapshot.data?[index]['id'],
                          'appTitle': snapshot.data?[index]['name'],
                        });
                      },
                      child: Container(
                        height: Get.height * .23,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              snapshot.data![index]['thumbnail'] ?? '',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const VerticalGap(),
                    Text(
                      snapshot.data![index]['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const VerticalGap(gap: 10),
                  ],
                );
              }),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
