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
        storyItems: [
          StoryItem.text(title: 'Red', backgroundColor: Colors.red),
          // StoryItem.text(title: 'Blue', backgroundColor: Colors.blue),
          // StoryItem.text(title: 'Green', backgroundColor: Colors.green),
          StoryItem.pageImage(
            url:
                'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg',
            controller: controller.storyController,
          ),
          StoryItem.pageVideo(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            controller: controller.storyController,
          ),
        ],
        inline: false,
        repeat: false,
        onComplete: () {
          Get.back();
        },
      ),
    );
  }
}
