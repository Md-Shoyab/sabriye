import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/widgets/story_view.dart';
import '../controllers/test_controller.dart';

class TestView extends GetView<TestController> {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        controller: controller.storyController,
        storyItems: controller.storyItems,
        inline: false,
        repeat: false,
        onComplete: () {
          Get.back();
        },
      ),
    );
  }
}
