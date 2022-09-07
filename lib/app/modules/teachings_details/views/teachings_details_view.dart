import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/check_points.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/gapper.dart';
import '../../../widgets/related_posts.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * .22,
              child: ListView.builder(
                itemCount: controller.relatedPostImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => RelatedPost(
                      controller: controller,
                      index: index,
                    )),
              ),
            ),
            const VerticalGap(),
            const Center(
              child: Text('Dots Indicator'),
            ),
            Container(
              width: Get.width,
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage(AppAssets.karmicRelationshipImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const VerticalGap(gap: 15),
                  const Text(
                    AppConstants.teachingPostTitle1,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      height: 1.6,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const VerticalGap(),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(AppAssets.sabriyeCircleProfile),
                      ),
                      const HorizontalGap(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              AppConstants.bySabriyeAyanaText,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            VerticalGap(),
                            Text(
                              'Bestselling author, new paradigm business, life & soul mentor, founder of the Akasha Healing™ method and the School of Inner Union',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const VerticalGap(),
                  const CheckBoxPoints(
                    checkBoxPointText: AppConstants.teachingDetailsPoint1,
                  ),
                  const CheckBoxPoints(
                    checkBoxPointText: AppConstants.teachingDetailsPoint2,
                  ),
                  const CheckBoxPoints(
                    checkBoxPointText: AppConstants.teachingDetailsPoint3,
                  ),
                  const CheckBoxPoints(
                    checkBoxPointText: AppConstants.teachingDetailsPoint4,
                  ),
                  const CheckBoxPoints(
                    checkBoxPointText: AppConstants.teachingDetailsPoint5,
                  ),
                  const VerticalGap(gap: 15),
                  const Text(
                    'Blessings in disguise',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const VerticalGap(gap: 15),
                  const Text(
                    '''As humans, we are always quick to praise the Lord or the Universe when things go the way we want them to, but when things go South we fail to see how these situations serve us. Instead, we tend to blame others or we believe that it is the dark forces attacking our light – but neither of those interpretations actually help us turn things around for the better again. Quite the opposite, the more we feel victimized the further away from the truth we become because it obscures the real reason why this situation or experience was drawn into your life.

I firmly believe that every single experience that we have is ultimately happening for our highest good. In fact, I believe that the subconscious mind pulls in the people, situations, and experiences into our lives that are meant to help us heal what was left unresolved in previous timelines. These previous timelines are past life, ancestral, and our current life childhood whereby all ancestral, as well as childhood wounding (click the link for a teaching on this), are always rooted in past life trauma that is still seeking resolution in our current life reality.
''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
