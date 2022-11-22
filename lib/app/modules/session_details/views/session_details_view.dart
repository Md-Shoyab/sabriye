import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/gapper.dart';
import '../../../widgets/on_off_session_card.dart';
import '../../../widgets/sessions_testimony.dart';
import '../controllers/session_details_controller.dart';

class SessionDetailsView extends GetView<SessionDetailsController> {
  const SessionDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Sessions',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FutureBuilder<Map>(
                future: controller.apiServices.sessionDetails(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
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
                future: controller.apiServices.sessionTestimony(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
                    }
                    return Column(
                      children: [
                        const Divider(
                          color: AppColors.grey,
                          thickness: 1.0,
                          height: 20,
                          indent: 15,
                          endIndent: 15,
                        ),
                        SessionTestimony(
                          profileImagePath: snapshot.data![5]['thumbnail'],
                          reviewerName: snapshot.data![5]['title']['rendered'],
                          reviewRating: 5.0,
                          reviewFullContent: snapshot.data![5]['content']
                              ['rendered'],
                        ),
                        const Divider(
                          color: AppColors.grey,
                          thickness: 1.0,
                          height: 20,
                          indent: 15,
                          endIndent: 15,
                        ),
                      ],
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
              ),
              FutureBuilder<Map>(
                future: controller.apiServices.sessionDetailsPartTwo(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Founnd');
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
                future: controller.apiServices.sessionTestimony(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
                    }
                    return Column(
                      children: [
                        const Divider(
                          color: AppColors.grey,
                          thickness: 1.0,
                          height: 20,
                          indent: 15,
                          endIndent: 15,
                        ),
                        SessionTestimony(
                          profileImagePath: snapshot.data![4]['thumbnail'],
                          reviewerName: snapshot.data![4]['title']['rendered'],
                          reviewRating: 5.0,
                          reviewFullContent: snapshot.data![4]['content']
                              ['rendered'],
                        ),
                        const Divider(
                          color: AppColors.grey,
                          thickness: 1.0,
                          height: 20,
                          indent: 15,
                          endIndent: 15,
                        ),
                      ],
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
              ),
              FutureBuilder<Map>(
                future: controller.apiServices.sessionDetailsPartThree(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
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
                future: controller.apiServices.sessionTestimony(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
                    }
                    return Column(
                      children: [
                        const Divider(
                          color: AppColors.grey,
                          thickness: 1.0,
                          height: 20,
                          indent: 15,
                          endIndent: 15,
                        ),
                        SessionTestimony(
                          profileImagePath: snapshot.data![3]['thumbnail'],
                          reviewerName: snapshot.data![3]['title']['rendered'],
                          reviewRating: 5.0,
                          reviewFullContent: snapshot.data![3]['content']
                              ['rendered'],
                        ),
                        const Divider(
                          color: AppColors.grey,
                          thickness: 1.0,
                          height: 20,
                          indent: 15,
                          endIndent: 15,
                        ),
                      ],
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
              ),
              FutureBuilder<Map>(
                future: controller.apiServices.sessionDetailsPartFour(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
                    }
                    return Html(
                      data: snapshot.data!['content']['rendered'],
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
              ),
              FutureBuilder<List>(
                future: controller.apiServices.sessionTestimony(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
                    }
                    return Column(
                      children: [
                        const Divider(
                          color: AppColors.grey,
                          thickness: 1.0,
                          height: 20,
                          indent: 15,
                          endIndent: 15,
                        ),
                        SessionTestimony(
                          profileImagePath: snapshot.data![2]['thumbnail'],
                          reviewerName: snapshot.data![2]['title']['rendered'],
                          reviewRating: 5.0,
                          reviewFullContent: snapshot.data![2]['content']
                              ['rendered'],
                        ),
                        const Divider(
                          color: AppColors.grey,
                          thickness: 1.0,
                          height: 20,
                          indent: 15,
                          endIndent: 15,
                        ),
                      ],
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
              ),
              FutureBuilder<Map>(
                future: controller.apiServices.sessionDetailsPartFive(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const VerticalGap(),
                        Container(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            snapshot.data!['title']['rendered'],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        const VerticalGap(gap: 5),
                        Html(
                          data: snapshot.data!['content']['rendered'],
                        ),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              ),
              const VerticalGap(),
              FutureBuilder<List>(
                future: controller.apiServices.sessionCardsDetails(),
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No Data Available');
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        snapshot.hasData
                            ? const Text(
                                'One-Off sessions:',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.primaryColor,
                                  height: 1.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : const CircularProgressIndicator(),
                        const VerticalGap(),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.length,
                          itemBuilder: ((context, index) => OneOffSessionCards(
                                title: snapshot.data![index]['title']
                                    ['rendered'],
                                content: snapshot.data![index]['content']
                                    ['rendered'],
                              )),
                        ),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              ),
              const Text(
                'Akasha Healing™ Packages',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primaryColor,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
