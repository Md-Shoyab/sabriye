import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class SessionDetailsController extends GetxController {
  ApiServices apiServices = ApiServices();

  final List<String> sessionBenefitList = [
    'Heal on a soul path level and not just the current incarnation level',
    'Get direct access to your karmic templates and Divine Blueprint',
    'Reprogram the subconscious mind at the ‘source code’ level',
    'Heal within all three timelines of the past; childhood, ancestral & past lives',
    'Fast-track your inner union, enlightenment, or Ascension process',
    'Break karmic loops that have been repeating over lifetimes and lifetimes',
    'Change the lives of future generations as well as your own future lifetimes',
  ];
  final List<String> recognizeThisList = [
    'Is an area in your life not working for you?',
    'Do you keep running into the same kind of situations and the same kind of relationships?',
    'Do you recognize repeating patterns in your life that you just can’t seem to break?',
    'Is there a red thread that you see through a specific or maybe all areas of your life?',
    'Do you feel like you are stuck in the movie Groundhog day, re-experiencing the same hurdles, struggles and obstacles over and over again?',
  ];

  final List<String> sessionResultPointsList = [
    'Money struggles',
    'Self-worth & Self-esteem',
    'Glass ceiling and income plateaus',
    'Healing narcissistic relationships',
    'Absent or emotionally unavailable father',
    'Mother wound',
    'Inner child wounding',
    'Ancestral or transgenerational trauma',
    'Soul legacy wound',
    'Visibility struggles',
    'Getting off the victim triangle',
    'Bad luck\' in love relationships',
    'Overcoming the loss of a child, birth & abortion trauma',
    'Self-love & Self-forgiveness',
    'Healing sexual abuse',
    'Abandonment & rejection wounds',
    'Overcoming fears & phobias',
    'Twin Flame & Soul mate relationships',
    'Not getting promoted',
    'Imposter syndrome',
    'Incarnation wounding',
    'Past life oaths and vows of celibacy and poverty',
    'Codependency and stepping into your power',
    'Soul retrieval',
    'Past life karmic patterns/karmic debt',
    'Sibling rivalry',
    'Sisterhood wound',
    'Your relationship with your soul and the Divine',
    'Rescuing/Savior',
    'Inability or difficulty to receive',
    'Overgiving',
  ];

  final List<String> sessionCardTitle = [
    'Three Timelines Healing €1111',
    'Breaking Karmic Loops €1111',
    "Akasha Healing™ the false 'love is pain' program €1111",
    'Soul Clarity Journey €1111',
    'Money Blocks session €555',
  ];
}
