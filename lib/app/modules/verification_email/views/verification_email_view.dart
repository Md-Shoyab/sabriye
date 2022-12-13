import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/verification_email_controller.dart';

class VerificationEmailView extends GetView<VerificationEmailController> {
  const VerificationEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerificationEmailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VerificationEmailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
