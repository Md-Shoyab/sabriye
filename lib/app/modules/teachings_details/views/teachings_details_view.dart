import 'package:flutter/material.dart';
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
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: AppColors.buttonColor,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const VerticalGap(),
                      Container(
                        height: 80,
                        width: 120,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppAssets.teaching1),
                          ),
                        ),
                      ),
                      const VerticalGap(),
                      const Text(
                        'The Nine Levels of\nTwin Flames Initiations',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          const VerticalGap(),
          const Text('Dots'),
          const VerticalGap(),
          Container(
            height: Get.height * .23,
            width: Get.width * .9,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const VerticalGap(gap: 20),
          const Text(
            'How Everything is Happening for Your Highest Good,\nEven When What’s Happening Blows',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const VerticalGap(),
          const Divider(
            thickness: 1.0,
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
