import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgramsDetailsController extends GetxController {
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final List<String> clientResultPointsList = [
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

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Provide valid email.";
    } else if (GetUtils.isEmail(value)) {
      debugPrint('This is correct email');
    } else {
      return 'Provide a valid email';
    }
    return null;
  }

  String? validateName(String? value) {
    if (value!.isEmpty) {
      return 'Provide a valid name';
    } else {}
    return null;
  }

  @override
  void onClose() {
    fnameController.dispose();
    emailController.dispose();
  }
}
