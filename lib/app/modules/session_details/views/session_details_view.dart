import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/check_points.dart';
import '../../../widgets/one_off_session_card.dart';
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
        child: Column(
          children: [
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 25,
              ),
              decoration: const BoxDecoration(
                color: AppColors.greenishBg,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Akasha Healing™ Journey\nwith Sabriyé Ayana',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),
                  ),
                  VerticalGap(),
                  Text(
                    'Are you ready to be, do and have what your soul desires? It\'s time to claim what is yours by Divine right!',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const VerticalGap(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'The Secret to\nUnlocking Heaven on\nEarth',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                              ),
                            ),
                            VerticalGap(gap: 5),
                            Text(
                              'Is healing trauma and karma\nacross multiple timelines.',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 130,
                          width: 130,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  AppAssets.akashayHealingImageSession),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalGap(),
                  Container(
                    height: 150,
                    padding: const EdgeInsets.symmetric(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage(
                                  AppAssets.akshayHealingSabriyeProfile),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const HorizontalGap(),
                        const Text(
                          '“I have facilitated over a\nthousand individual Akasha\nQuantum Soul Healing™\nJourneys to date.”',
                          style: TextStyle(
                            fontSize: 18,
                            height: 1.9,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const VerticalGap(),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: const Text(
                      'With Akasha Quantum Soul Healing™ you:',
                    ),
                  ),
                  const VerticalGap(),
                  SizedBox(
                    height: Get.height * .4,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.sessionBenefitList.length,
                      itemBuilder: ((context, index) => CheckBoxPoints(
                            checkBoxPointText:
                                controller.sessionBenefitList[index],
                          )),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Are you ready to heal on a deeper level than you have ever gone before?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                      VerticalGap(),
                      Text(
                        '''Then you have finally found what you are looking for. Akasha Quantum Soul Healing™ is the most profound and revolutionary healing method currently available to help you heal your deepest life struggles on a soul path level that other healing modalities were not able to reach.
            
This is because most healing modalities work in the mental, emotional, physical, and vibrational body or a combination of them. With Akasha Quantum Soul Healing™ we work in the causal body, which holds the blueprint and templates from which these lower bodies are created. This allows us as it were to directly reprogram our 'source code'.
            
Many of my clients are therapists, psychologists, psychiatrists, healers, new paradigm leaders, and (spiritual) business owners who have tried everything else to no avail, only to reach huge breakthroughs and lasting transformation in sometimes as little as one single Akasha Quantum Soul Healing™ session.
            
Over the past 7 years, I have helped over a thousand clients just like you unlock their soul missions, their soul legacies, soul partnerships, and tap into their cosmic bank accounts through healing the unresolved pain and trauma that they still carry from past lives, their ancestry, and childhood.
            
It's these unresolved wounds from the past that are holding you back and having you subconsciously sabotage yourself, your life, your relationships, your finances, and your soul calling – when we are meant to have it all. It's our Divine Birthright.
            
I am here to help you unlock Heaven on Earth.''',
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.6,
                    height: 40,
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage(AppAssets.cathyBellancaProfile),
                        ),
                        const VerticalGap(gap: 5),
                        const Text(
                          'CATHY BELLANCA',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        const VerticalGap(gap: 5),
                        const Text(
                          '“I feel much more confident in myself and my ability to have success and wealth. I have signed FOUR new clients and I know that more are on the way.”',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const VerticalGap(gap: 5),
                        RatingBar.builder(
                          ignoreGestures: true,
                          initialRating: 5.0,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                          itemSize: 20,
                        ),
                        const VerticalGap(gap: 5),
                        const Text(
                          '''When I met Sabriyé, I was struggling with getting paying clients. I had launched my business almost a year ago and had very few paying clients. Not only was this affecting me financially, it also made me question my skills as a healer and an entrepreneur. I wondered if I was ever going to be able to help people and if I could have a successful business.''',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.6,
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Find the root cause of your current life struggles',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                      const VerticalGap(),
                      const Text(
                        '''The Akasha Healing™ method helps you find the root cause on a soul path level to your current life struggles. When you heal the root cause, it heals all consecutive timelines in which these wounds were continued to be played out. Often in as little as one session, we can break deep patterns by finding the original wound that created the pattern.
            
In the Akasha Healing™ sessions, we address issues such as:''',
                      ),
                      SizedBox(
                        height: Get.height,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.sessionResultPointsList.length,
                          itemBuilder: ((context, index) => CheckBoxPoints(
                                checkBoxPointText:
                                    controller.sessionResultPointsList[index],
                              )),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.6,
                        height: 40,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: Column(
                          children: [
                            const CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage(AppAssets.dannielleJonesProfile),
                            ),
                            const VerticalGap(gap: 5),
                            const Text(
                              'DANNIELLE JONES',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            const VerticalGap(gap: 5),
                            const Text(
                              '“We got to the root of me doubting myself and it was healed in that one session.”',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const VerticalGap(gap: 5),
                            RatingBar.builder(
                              ignoreGestures: true,
                              initialRating: 5.0,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              itemSize: 20,
                            ),
                            const VerticalGap(gap: 5),
                            const Text(
                              '''I enjoyed working with Sabriye. In our first session she guided me calmly and handled my extreme self questioning with ease. I have felt more confidence in my self and my abilities since, and I no longer question myself. I have had, and will have, more sessions with Sabriyé. There is such value in her, and her work, and I highly recommend.''',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    thickness: 0.6,
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'What is Akasha Quantum Soul\nHealing™?',
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      VerticalGap(),
                      Text(
                        '''Akasha Quantum Soul Healing™ is a revolutionary healing method that helps you release unprocessed trauma, karma and vibrational residue from this lifetime and previous lifetimes. Allowing you to reprogram deep subconscious beliefs, release fears and phobias that are limiting you and retrieve aspects of the soul that were disowned or 'lost' in other timelines.
            
The soul itself remains pure and unscathed throughout the incarnation process. All our wounding throughout all timelines only accumulates on an ego level, creating the wounded and fragmented ego. When one heals the wounded ego it reactivates the Divine (soul) Blueprint that has always remained immaculate within the soul realm. Creating as above, so below which allows us to fully embody our soul in the physical realm without the previous distortions that were created through the perception of the wounded ego – who sees itself separated, instead of at one with the soul.
            
When we get the ego to stop playing tug of war with the soul, we not only get the ego and the soul on the same page but in union. When the ego and the soul are one or as you could say have joined forces, we can take our manifesting powers to the soul level.''',
                        style: TextStyle(height: 1.5),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.6,
                    height: 40,
                    indent: 25,
                    endIndent: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Find the root cause of your current life struggles',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                      const VerticalGap(),
                      const Text(
                        '''The Akasha Healing™ method helps you find the root cause on a soul path level to your current life struggles. When you heal the root cause, it heals all consecutive timelines in which these wounds were continued to be played out. Often in as little as one session, we can break deep patterns by finding the original wound that created the pattern.
            
In the Akasha Healing™ sessions, we address issues such as:''',
                      ),
                      SizedBox(
                        height: Get.height,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.sessionResultPointsList.length,
                          itemBuilder: ((context, index) => CheckBoxPoints(
                                checkBoxPointText:
                                    controller.sessionResultPointsList[index],
                              )),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.6,
                        height: 40,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: Column(
                          children: [
                            const CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage(AppAssets.lauraMullisProfile),
                            ),
                            const VerticalGap(gap: 5),
                            const Text(
                              'LAURA MULLIS',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            const VerticalGap(gap: 5),
                            const Text(
                              '“Sabriye was able to take me to depths of healing no one else has reached.”',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const VerticalGap(gap: 5),
                            RatingBar.builder(
                              ignoreGestures: true,
                              initialRating: 5.0,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              itemSize: 20,
                            ),
                            const VerticalGap(gap: 5),
                            const Text(
                              '''I worked with Sabriye using the Akasha Quantum Soul Healing method to help understand my soul's story and the root of the continued pattern of martyrdom in my life. In 3 sessions we were able to piece together my entire soul story (the details of which I could not have imagined) and fully understand exactly why I have been caught in a pattern of sacrificing myself to save others.
            
After our work I felt a radical shift in the martyrdom pattern and now have the ability to recognize the pattern when it surfaces and have the power to choose not to engage in it. I am so grateful for Sabriye, the Akasha Quantum Soul Healing Method and the space she holds. She is such an intuitive, patient and amazing healer. I was so impressed with her work that I enrolled in her Akasha Quantum Soul Healing Method program and I am finding it brings radical shifts to the people I am honored to help heal. Thank you Sabriye for trusting your intuition, doing your own work and bringing this gift of Akasha Quantum Soul Healing to the World.''',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.6,
                        height: 40,
                      ),
                      const Text(
                        'Do you recognize this?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const VerticalGap(),
                      SizedBox(
                        height: Get.height * .28,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.recognizeThisList.length,
                          itemBuilder: ((context, index) => CheckBoxPoints(
                                checkBoxPointText:
                                    controller.recognizeThisList[index],
                              )),
                        ),
                      ),
                      const VerticalGap(),
                      const Text(
                        '''You are not alone. This is very common, but hardly ever addressed.
            
Everything we experience in our outer reality is a reflection of what we believe and hold to be true internally. This is how life in the physical plane works, it allows our subconscious to project out onto the screen of life that which we hold to be true inside of us.
            
Throughout our many incarnations on our soul's journey since we split from source, we have had many different experiences in the physical and in between lives. Some were extremely happy, loving, joyous and beautiful. Others were scary, traumatizing and extremely painful to go through.
            
These latter experiences often have left their mark on us and we still carry with us the vibrational residue of these experiences even when they happened lifetimes and lifetimes ago. This vibrational residue and in some cases unprocessed trauma from the past is what pulls in the people, situations and experiences that we encounter in our everyday life. Which is what many people refer to as karma.
            
This happens not as a punishment by the Divine because you did something wrong, instead it is a blessing where the subconscious projects everything unresolved and unprocessed out onto the screen of life as an opportunity to heal it once and for all.
            
The reality is that all our pain is ultimately based on a misinterpretation of our experiences. It all started with the incarnation wound, our first experience of separation from the Oneness that is our true nature. The pain of feeling separated and what we made it mean about ourselves is what started our accumulation of karma. As we started to attract the people, situations and experiences that would help us heal our misunderstanding – we instead felt victimized and hurt more because we didn't understand that they were presented to us as an opportunity to heal.
            
Over the course of many different lifetimes this has led to the accumulation of
various different misinterpretations, which each then created their own unique set of false beliefs and or fears that keep you from accessing your original Divine Blueprint which has remained unaltered within the soul realm.
            
By revisiting these various moments of misinterpretations and remembering what we erroneously made them mean, we restore them to our soul truth. Each time we do this we reactivate our Divine Blueprint, which allows us to return to our original state of Oneness and the Heaven on Earth experience that life in the physical is meant to be.''',
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                      const VerticalGap(gap: 15),
                      const Text(
                        '''The Akashic records, which are the chronicles of the soul – offer us a unique opportunity to make our subconscious fears and false beliefs (our misinterpretations) conscious.''',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primaryColor,
                          height: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const VerticalGap(),
                      const Text(
                        '''Each lifetime in the physical and all our experiences throughout the different dimensions are held in our personal Akashic field. The Akasha is an all-pervading field in the ether in which the records of all our past events are imprinted. By removing the unresolved trauma and unprocessed pain from this field we reactivate our Divine Blueprint.
            
When you reactivate your Divine Blueprint it brings you into full alignment with all that is your's by Divine Right on a soul level. This is the place where you can be and have it all, aka Heaven on Earth.''',
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.6,
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage(AppAssets.natashaLeighBrayProfile),
                        ),
                        const VerticalGap(gap: 5),
                        const Text(
                          'NATASHA LEIGH BRAY',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        const VerticalGap(gap: 5),
                        const Text(
                          '“… Sabriyé is an amazing healer. I loved my Akasha healing sessions with her. I saw improvements in my business and relationships thanks to the work we did.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const VerticalGap(gap: 5),
                        RatingBar.builder(
                          ignoreGestures: true,
                          initialRating: 5.0,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                          itemSize: 20,
                        ),
                        const VerticalGap(gap: 5),
                        const Text(
                          '''It was the first time I had really gone deep into past lives and I was not disappointed. It was very powerful work that allowed me to heal my incarnation wound and other deep wounds that all made so much sense in terms of the patterns coming up in my life today.''',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.6,
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Book your session',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const VerticalGap(),
                  const Text(
                    '''Select the one-off session or package of your choice by using the 'buy now!' button under it. This will bring you to our Thrivecart checkout, where you can pay through PayPal or Credit Card as well as Google Pay or Apple Pay.
            
After successful payment you will receive an email with a link to Sabriyé's online calendar and instructions on how to prepare for your session(s). If you do not receive this email within one hour please contact our support team for further assistance.''',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  const VerticalGap(gap: 15),
                  const Text(
                    'One-Off sessions:',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const VerticalGap(gap: 15),
                  SizedBox(
                    height: 1380,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.sessionCardTitle.length,
                      itemBuilder: ((context, index) => OneOffSessionCards(
                            buttonTxt: '',
                            content: '',
                            title: controller.sessionCardTitle[0],
                          )),
                    ),
                  ),
                  const Text(
                    'Akasha Healing™ Packages',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const VerticalGap(),
                  const OneOffSessionCards(
                    title:
                        'Akasha Healing™ Journey Combo Pack €3777 (Save €111)',
                    content:
                        'This package includes a Breaking Karmic Loops Journey, a Money Blocks Journey, a Three Timelines Healing Journey and a Soul Clarity Journey.',
                    buttonTxt: 'Buy Now',
                  ),
                  const OneOffSessionCards(
                    title:
                        'Akasha Healing™ Journey Combo Pack €3777 (Save €111)',
                    content:
                        'This package includes a Breaking Karmic Loops Journey, a Money Blocks Journey, a Three Timelines Healing Journey and a Soul Clarity Journey.',
                    buttonTxt: 'Buy Now',
                  ),
                  SizedBox(
                    height: Get.height * .15,
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
