import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/check_points.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../controllers/spiritual_spotlight_details_controller.dart';

class SpiritualSpotlightDetailsView
    extends GetView<SpiritualSpotlightDetailsController> {
  const SpiritualSpotlightDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Spiritual Spotlight Details',
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
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: Get.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.spiritualSpotlightImage1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const VerticalGap(gap: 20),
              const Text(
                'Recognizing and Healing the Disempowered Feminine Inside Ourselves with Laura Camacho',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
              const VerticalGap(gap: 20),
              const Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(AppAssets.profileImage),
                  ),
                  const HorizontalGap(gap: 15),
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
                        VerticalGap(gap: 5),
                        SizedBox(
                          child: Text(
                            'Bestselling author, new paradigm business, life & soul mentor, founder of the Akasha Healing™ method and the School of Inner Union',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              const VerticalGap(),
              const Text(
                'Read Time 3 mins',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(gap: 15),
              Container(
                height: 200,
                width: Get.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssets.spiritualSpotLightVideoImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const VerticalGap(),
              const Text(
                  'In this segment of the Spiritual Spotlight we will dive deep into:'),
              const VerticalGap(),
              const CheckBoxPoints(
                  checkBoxPointText:
                      'The three archetypes of the disempowered feminine.'),
              const CheckBoxPoints(
                  checkBoxPointText: 'The disempowered masculine archetypes.'),
              const CheckBoxPoints(
                  checkBoxPointText:
                      'How disempowerment shows up in our relationships.'),
              const CheckBoxPoints(
                  checkBoxPointText:
                      'How disempowerment drives our sexual desires and what can happen when we connect to our true desires.'),
              const CheckBoxPoints(checkBoxPointText: 'And More...'),
              const VerticalGap(),
              const Center(
                child: Text(
                  'The Disempowered Feminine Archetypes',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const VerticalGap(gap: 15),
              const Text(
                'The 3 feminine archetypes that keep you from your full creative power in your life, business & relationships.',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const CheckBoxPoints(checkBoxPointText: 'The doe-eyed damsel.'),
              const CheckBoxPoints(
                  checkBoxPointText: 'The hard shelled woman.'),
              const CheckBoxPoints(
                  checkBoxPointText: 'The people-pleasing good-girl.'),
              const VerticalGap(gap: 8),
              const Text('This is for women who:'),
              const VerticalGap(),
              const CheckBoxPoints(
                checkBoxPointText:
                    'Want to learn how to better manage their emotions, not feel so overwhelmed by life and soften and open, allowing their true self and essence to shine through.',
              ),
              const CheckBoxPoints(
                  checkBoxPointText:
                      'Want to stop forcing, pushing, efforting – pretending to be something that they are not (also to themselves). '),
              const CheckBoxPoints(
                  checkBoxPointText:
                      'Want to feel fulfilled and happy with their lives, feeling that they are in control. This is what I mean when I talk about personal power.'),
              const CheckBoxPoints(
                  checkBoxPointText:
                      'Want to peel away all the layers that are not true and are not you and who want to master their emotions and their energy.'),
              const VerticalGap(),
              const Text(
                '''The Doe-Eyed Damsel appears when we struggle to take responsibility for ourselves and life. These are moments when you feel that life is overwhelming and frustrating. The feeling of “I can’t” “Please save me” or “Do it for me, so I don’t have to.”. Feeling helpless and sorry for yourself. It’s an immature energy. The energy of an entitled princess who wants all the nice things in life, but doesn’t want to have to take responsibility for making it happen and instead feels resentful at life and others. The damsel doesn’t want a solution, she just wants it fixed for her. Her Prince Charming coming to the rescue. Whether it’s an actual man, money or something else, she just wants to be rescued so that she doesn’t have to take responsibility herself. 

The Hard-Shelled Woman is birthed out of the need to feel safe. She is strong, tough and hard. As the hard woman, you may even be perceived as empowered by the world. But you know better. You know that deep down there is an insecure little girl, longing for love and safety. This is because you know that this is just a protective shell. You have created layers of protection around yourself and around your heart. You don’t believe that you can be soft and feminine. Maybe you even see vulnerability and tenderness as a weakness. You keep people at bay and protect yourself. Yes, you may feel safe. But you also feel so lonely, tired and disconnected.

The People-Pleasing Good-Girl appears when you want to get something – love, approval, belonging. She wants to be liked by everyone and so she doesn’t know how to say no. As the people-pleaser or the good-girl, you don’t want to disappoint or let people down. But what is the price? You have no energy left for yourself. And who takes care of you? You mother people, try to fix and help and you give, give, give. Even when there is nothing left to give. To you, self-care is selfish, AND you put others and the world ahead of yourself. You end up feeling exhausted, depleted and drained. And still you don’t have what you desire or deserve.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                'About Laura Camacho',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(gap: 15),
              Container(
                height: 200,
                width: Get.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppAssets.spiritualSpotlightImage1,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const VerticalGap(gap: 15),
              const Text(
                '''I am a Clinical Psychologist and Life Coach. More than that though, I facilitate an experience. The experience of you coming into contact with the deepest parts of yourself. I work with people on their patterns. Patterns of behavior, thinking and feeling. Whatever is going inside of you, will be reflected in your outside world, so if you want to make a change, go within. I hold your hand, guide you into your depths and unexplored darkness and open you deeper to yourself. 

I am in service to the deepest truth within you, the emergence of your soul and true essence. Shedding the layers of everything that is not true, everything that is not you, to make space for and allow what is really you to come through. Your truth, your essence and your power. ''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              const Text(
                '''Website: https://www.lauracamacho.org/
Offers: https://www.lauracamacho.org/offert
Free program discussed in the interview: https://www.lauracamacho.org/3-faces-of-the-disempowered-feminine?fbclid=IwAR0tePox1W6m562wrVlQZlG5SU43YiSpruaSLA-hH9d9hYsE_-bWYUtF68c

With my deepest love,''',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.5,
                ),
              ),
              const VerticalGap(),
              Container(
                height: 40,
                width: 130,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.sabriyeSignature),
                  ),
                ),
              ),
              const VerticalGap(),
              const Text(
                'View all 30 comments',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
