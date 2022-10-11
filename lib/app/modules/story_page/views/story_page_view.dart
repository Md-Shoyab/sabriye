import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/widgets/story_view.dart';
import '../controllers/story_page_controller.dart';

class StoryPageView extends GetView<StoryPageController> {
  const StoryPageView({Key? key}) : super(key: key);

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
