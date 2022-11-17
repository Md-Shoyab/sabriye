import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/membership_accordion.dart';
import '../controllers/membership_controller.dart';

class MembershipView extends GetView<MembershipController> {
  const MembershipView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Membership',
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const VerticalGap(),
          FutureBuilder<Map>(
            future: controller.apiServices.membershipIntro(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text('0 Cards avaialible'),
                  );
                }
                return Html(
                  data: snapshot.data!['content']['rendered'],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
          ),
          FutureBuilder<List>(
            future: controller.apiServices.membershipAccordion(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.isEmpty) {
                  return const Text('No Data Available');
                }
                return Container(
                  padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: AppColors.lightprimary.withOpacity(0.6),
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    clipBehavior: Clip.none,
                    itemBuilder: ((context, index) => MembershipAccordion(
                          controller: controller,
                          accordionTitle: snapshot.data![index]['title']
                              ['rendered'],
                          accordionContent: snapshot.data![index]['content']
                              ['rendered'],
                          index: index,
                        )),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
          ),
          FutureBuilder<Map>(
            future: controller.apiServices.membershipCheckPoints(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text('0 Cards avaialible'),
                  );
                }
                return Html(
                  data: snapshot.data!['content']['rendered'],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
          ),
          const VerticalGap(),
          FutureBuilder<List>(
              future: controller.apiServices.membershipPayment(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return const Text('0 Details');
                  }
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  snapshot.data![2]['title']['rendered'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Html(
                                data: snapshot.data![2]['content']['rendered'],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'FREE',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.lightprimary,
                            ),
                            image: const DecorationImage(
                              alignment: Alignment.bottomRight,
                              image: AssetImage(
                                AppAssets.flowerImage,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 10, 0, 0),
                                child: Text(
                                  snapshot.data![1]['title']['rendered'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const VerticalGap(gap: 5),
                              const Center(
                                child: Text(
                                  'Billed Annually',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Html(
                                data: snapshot.data![1]['content']['rendered'],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '€111',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Text(
                                  snapshot.data![0]['title']['rendered'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Html(
                                data: snapshot.data![0]['content']['rendered'],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 20),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    '€',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }
                return const Center(child: CircularProgressIndicator());
              }),
        ],
      ),
    );
  }
}
