import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class TestController extends GetxController {
  final storyController = StoryController();
  final List<StoryItem> storyItems = [
    StoryItem.text(title: 'Red', backgroundColor: Colors.red),
    StoryItem.text(title: 'Blue', backgroundColor: Colors.blue),
    StoryItem.text(title: 'Green', backgroundColor: Colors.green),
  ];
  
  @override
  void onClose() {}
}
