import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/coming_into_oneness_controller.dart';

class ComingIntoOnenessView extends GetView<ComingIntoOnenessController> {
  const ComingIntoOnenessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Coming Into Oneness',
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
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Healing the separation\nbetween the ego and the\nsoul',
                style: TextStyle(
                  height: 1.4,
                  fontSize: 28,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(),
              const Text(
                '''A 12-Month Profoundly Transformational Group Experience Where We Heal The Separation Between Your Ego And Your Soul, Unlock Your Divine Design, Quantum Leap Into The Frequency Of Heaven on Earth, And Become A Vibrational Match For All That Is Yours By Divine Right!''',
                style: TextStyle(
                  height: 1.7,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(),
              const Text(
                '''Akasha Healing™ is one of the deepest levels of trauma & karma healing available to us now. Working within the Akashic Quantum field allows you to heal money, love, relationships, vocation, and all other areas of your life by closing the door on the past once and for all.''',
                style: TextStyle(
                  height: 1.7,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const VerticalGap(),
              Container(
                height: Get.height * .25,
                width: Get.width,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.comingIntoOneness),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const VerticalGap(),
              const Text(
                'Are you ready to be, do and have what your soul desires?',
                style: TextStyle(
                  height: 1.7,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(),
              const Text(
                '''Living a soul-aligned life goes deeper than simply setting an intention, it requires healing our wounded ego that otherwise will hijack our reality whenever it sees its chance. This is not yet another program that will teach you to ‘manifest your ego desires’ the woo-woo way. This program is not about attracting the love of your life, landing your dream job, or upscaling your business or income to six or seven figures.
      
Yet, all of the above are possible side-effects of the powerful work that we will be doing together. The difference is that it’s not these things that motivate you. You are seeking more profound experiences than designer clothes, a lamborghini and the jet-set life.
      
You crave authenticity, deep connection, unconditional love, unlimited abundance in all areas of your life, freedom and soul liberation. It’s not that any of the other experiences are wrong in your eyes, it’s that you are searching for more depth and meaning in your life beyond the shiny objects that you realise are merely a distraction from why we are really here and what we came here to do.
      
This by no means is to say that you have to renounce all worldly stuff and can’t own luxury cars. If you deeply desire the experience of having a Porsche, a mansion or a yacht this is of course always available to have, but it’s not what makes you jump out of bed every morning.
      
You came here to shine your light bright, to create impact, to be a changemaker, to fully embody your soul and create a legacy of light in your own life and every life you touch including future generations. 
      
The disconnect that you experience between who you know you are here to be and your current reality is caused by the unresolved wounding and pain that you still carry with you from your past. When you can let the past go on the deepest subconscious level, the way is clear for the soul to fully embody itself in the physical.''',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.7,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const VerticalGap(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: Get.width,
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.lightprimary.withOpacity(0.6),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'About Sabriyé Ayana',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const VerticalGap(gap: 20),
                      Container(
                        height: Get.height * .2,
                        width: Get.width * .8,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(AppAssets.aboutSabriya),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const VerticalGap(gap: 20),
                      const Text(
                          '''My name is Sabriyé Ayana, I am a bestselling spiritual author, New Paradigm leader, founder of Akasha Quantum Soul Healing™ & the School of Inner Union. I help new paradigm shifters and leaders ready to unlock the frequency of Heaven on Earth, take their manifesting skills to the Soul level. 

The key to unlocking your private version of Paradise is healing the separation between the ego and the soul. 

The reason why so many people fail to create the life and the reality that they dream of is because their ego and their soul are not on the same page. They are literally coming from two different directions, as the ego creates from the frequency of fear and the soul creates from the frequency of love. It is through healing the wounded ego that we can come into Divine union with our soul.''')
                    ],
                  ),
                ),
              ),
              const VerticalGap(gap: 30),
              const Text(
                'Reactivating Your Divine Blueprint',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(),
              const Text(
                '''There’s a Divine design for every aspect of our lives, a perfect match if you will for where we live, what we do for a living, the person we spend our lives with, the quality of our health, the amount of money in the bank and all our other earthly desires.

The reason we are often not living our Divine design is because it is being distorted by the unresolved pain and wounding that we still carry with us from our childhood, our ancestors and our past life incarnations. We all have a Divine blueprint that is crystal clear and perfect within the soul realm, but as it projects from the energetical realm into the physical, our fears and false beliefs created from our unresolved pain and wounding in the three previous timelines creates distortions in the physical manifestation of our Divine design. When we heal the origins of these distortions, they cease to exist and our Divine design will manifest as crystal clear and perfect in the physical realm as the original that forever stays immaculate within the soul realm.''',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const VerticalGap(),
              const Center(
                child: Text(
                  'The Four Stages of Inner Union',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const VerticalGap(gap: 20),
              Center(
                child: Obx(
                  () => Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: controller.showValue.value
                          ? Colors.transparent
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          controller.showValue.value
                              ? AppAssets.accordionBackground
                              : AppAssets.transparentBackground,
                        ),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.lightprimary.withOpacity(0.4),
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            controller.title,
                            style: TextStyle(
                              fontSize: 18,
                              color: controller.showValue.value
                                  ? AppColors.white
                                  : AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              controller.showValue.value =
                                  !controller.showValue.value;
                            },
                            icon: Icon(
                              controller.showValue.value
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: controller.showValue.value
                                  ? AppColors.white
                                  : AppColors.primaryColor,
                            ),
                          ),
                        ),
                        controller.showValue.value
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                child: Text(
                                  controller.content,
                                  style: const TextStyle(
                                    color: AppColors.white,
                                  ),
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
              ),
              const VerticalGap(gap: 30),
              const Text(
                'The program details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
              ),
              const VerticalGap(gap: 20),
              const Text(
                'Over the course of 12 months we are going to go through four different stages of the Inner Union process. Each stage is built up of three months, with with plenty of time to do the modules, to integrate and catch up if needed.',
              ),
              const VerticalGap(gap: 20),
              const Divider(
                height: 1.3,
                color: Colors.grey,
              ),
              Container(
                width: Get.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(AppAssets.pattyProfile),
                    ),
                    VerticalGap(gap: 5),
                    Text(
                      'PATTY C.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    VerticalGap(gap: 5),
                    Text(
                      'United States',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    VerticalGap(),
                    Text(
                      '''“Sabriye has guided me on my journey for several years and her teachings are always helpful, but none has been as powerful as the recent shift that came in a module of Coming into Oneness. It revealed how my position as the golden child of my parents, counterintuitive as it sounds, was a form of wounding. Sabriye’s teaching released me from a lifetime of trying to be perfect, fear of not achieving that high standard and the exhausting task of maintaining a facade of perfection that hid my true self. Thank you once again, Sabriye, for your continued guidance.”''',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1.3,
                color: Colors.grey,
              ),
              const VerticalGap(gap: 20),
              const Text(
                'Who is ‘Coming into Oneness’ for?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const VerticalGap(),
              const Text(
                  '''The program ‘Coming into Oneness’ is for everyone that is ready to take their life and their manifestation skills to the soul level. It doesn’t matter if you are a stay-at-home mom, entrepreneur, business professional, Starseed, lightworker, Twin Flame or none of the above.

Coming into Oneness is about the next step in our human evolution and will meet everyone at the level that they are at in order to uplevel to the next level available to them and beyond by healing the wounded ego that is keeping them in the illusion of being separated from their soul. Once you get the ego and the soul on the same page, you unlock your soul’s superpower which brings in all that is yours by Divine right''')
            ],
          ),
        ),
      ),
    );
  }
}
