import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/check_points.dart';
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
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Center(child: Text('Dots')),
            const VerticalGap(),
            Center(
              child: Container(
                height: Get.height * .23,
                width: Get.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.karmicRelationshipImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const VerticalGap(),
            const Center(
              child: Text(
                'How Everything is Happening for Your Highest Good,\nEven When What’s Happening Blows',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  height: 1.8,
                ),
              ),
            ),
            const VerticalGap(),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AppAssets.profileImage),
                  ),
                  const HorizontalGap(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'by Sabriyé Ayana',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        VerticalGap(gap: 8),
                        Text(
                          'Bestselling author, new paradigm business, life & soul mentor, founder of the AkashaHealing™ method and the School of Inner Union',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Read Time 5 mins',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                  'In this soul teaching on how everything is happening for your highest good you will learn:'),
            ),
            const VerticalGap(),
            const CheckBoxPoints(
              checkBoxPointText:
                  'How our external experiences offer us an opportunity to heal unresolved pain from the past',
            ),
            const CheckBoxPoints(
              checkBoxPointText:
                  'How our external experiences offer us an opportunity to heal unresolved pain from the past',
            ),
            const CheckBoxPoints(
              checkBoxPointText:
                  'How our external experiences offer us an opportunity to heal unresolved pain from the past',
            ),
            const VerticalGap(),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Blessings in disguise',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '''As humans, we are always quick to praise the Lord or the Universe when things go the way we want them to, but when things go South we fail to see how these situations serve us. Instead, we tend to blame others or we believe that it is the dark forces attacking our light – but neither of those interpretations actually help us turn things around for the better again. Quite the opposite, the more we feel victimized the further away from the truth we become because it obscures the real reason why this situation or experience was drawn into your life.''',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),
            const VerticalGap(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '''I firmly believe that every single experience that we have is ultimately happening for our highest good. In fact, I believe that the subconscious mind pulls in the people, situations, and experiences into our lives that are meant to help us heal what was left unresolved in previous timelines. These previous timelines are past life, ancestral, and our current life childhood whereby all ancestral, as well as childhood wounding (click the link for a teaching on this), are always rooted in past life trauma that is still seeking resolution in our current life reality.''',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * .15,
            ),
          ],
        ),
      ),
    );
  }
}
