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
      body: ListView(
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
          const Divider(
            color: AppColors.grey,
            thickness: 1.0,
            height: 20,
            indent: 15,
            endIndent: 15,
          ),
          FutureBuilder<List>(
            future: controller.apiServices.sessionTestimony(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.isEmpty) {
                  return const Text('No Data Available');
                }
                return SessionTestimony(
                  profileImagePath: snapshot.data![4]['thumbnail'],
                  reviewerName: snapshot.data![4]['title']['rendered'],
                  reviewHighlightedText:
                      '''We got to the root of me doubting myself and it was healed in that one session.''',
                  reviewRating: 5.0,
                  reviewFullContent: snapshot.data![4]['content']['rendered'],
                );
              }
              return const Center(child: CircularProgressIndicator());
            }),
          ),
          const Divider(
            color: AppColors.grey,
            thickness: 1.0,
            height: 20,
            indent: 15,
            endIndent: 15,
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
          const Divider(
            color: AppColors.grey,
            thickness: 1.0,
            height: 20,
            indent: 15,
            endIndent: 15,
          ),
          FutureBuilder<List>(
            future: controller.apiServices.sessionTestimony(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.isEmpty) {
                  return const Text('No Data Available');
                }
                return SessionTestimony(
                  profileImagePath: snapshot.data![3]['thumbnail'],
                  reviewerName: snapshot.data![3]['title']['rendered'],
                  reviewHighlightedText:
                      '''I worked with Sabriye using the Akasha Quantum Soul Healing method to help understand my soul’s story and the root of the continued pattern of martyrdom in my life. In 3 sessions we were able to piece together my entire soul story (the details of which I could not have imagined) and fully understand exactly why I have been caught in a pattern of sacrificing myself to save others.
 After our work I felt a radical shift in the martyrdom pattern and now have the ability to recognize the pattern when it surfaces and have the power to choose not to engage in it. I am so grateful for Sabriye, the Akasha Quantum Soul Healing Method and the space she holds. She is such an intuitive, patient and amazing healer. I was so impressed with her work that I enrolled in her Akasha Quantum Soul Healing Method program and I am finding it brings radical shifts to the people I am honored to help heal. Thank you Sabriye for trusting your intuition, doing your own work and bringing this gift of Akasha Quantum Soul Healing to the World.''',
                  reviewRating: 5.0,
                  reviewFullContent: snapshot.data![3]['content']['rendered'],
                );
              }
              return const Center(child: CircularProgressIndicator());
            }),
          ),
          const Divider(
            color: AppColors.grey,
            thickness: 1.0,
            height: 20,
            indent: 15,
            endIndent: 15,
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
          const Divider(
            color: AppColors.grey,
            thickness: 1.0,
            height: 20,
            indent: 15,
            endIndent: 15,
          ),
          FutureBuilder<List>(
            future: controller.apiServices.sessionTestimony(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.isEmpty) {
                  return const Text('No Data Available');
                }
                return SessionTestimony(
                  profileImagePath: snapshot.data![2]['thumbnail'],
                  reviewerName: snapshot.data![2]['title']['rendered'],
                  reviewHighlightedText:
                      '''I worked with Sabriye using the Akasha Quantum Soul Healing method to help understand my soul’s story and the root of the continued pattern of martyrdom in my life. In 3 sessions we were able to piece together my entire soul story (the details of which I could not have imagined) and fully understand exactly why I have been caught in a pattern of sacrificing myself to save others.
 After our work I felt a radical shift in the martyrdom pattern and now have the ability to recognize the pattern when it surfaces and have the power to choose not to engage in it. I am so grateful for Sabriye, the Akasha Quantum Soul Healing Method and the space she holds. She is such an intuitive, patient and amazing healer. I was so impressed with her work that I enrolled in her Akasha Quantum Soul Healing Method program and I am finding it brings radical shifts to the people I am honored to help heal. Thank you Sabriye for trusting your intuition, doing your own work and bringing this gift of Akasha Quantum Soul Healing to the World.''',
                  reviewRating: 5.0,
                  reviewFullContent: snapshot.data![2]['content']['rendered'],
                );
              }
              return const Center(child: CircularProgressIndicator());
            }),
          ),
          const Divider(
            color: AppColors.grey,
            thickness: 1.0,
            height: 20,
            indent: 15,
            endIndent: 15,
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
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
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
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: const Text(
              'One-Off sessions:',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.primaryColor,
                height: 1.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const VerticalGap(),
          FutureBuilder<List>(
            future: controller.apiServices.sessionCardsDetails(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.isEmpty) {
                  return const Text('No Data Available');
                }
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: ((context, index) => OneOffSessionCards(
                        title: snapshot.data![index]['title']['rendered'],
                        content: snapshot.data![index]['content']['rendered'],
                      )),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
          ),
          const VerticalGap(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: const Text(
              'Akasha Healing™ Packages',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.primaryColor,
                height: 1.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
