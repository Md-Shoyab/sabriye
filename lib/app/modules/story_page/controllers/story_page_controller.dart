import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryPageController extends GetxController {
  final StoryController storyController = StoryController();
  final ApiServices _apiServices = ApiServices();
  final List<StoryItem> storyItems = [
    StoryItem.text(title: 'Red', backgroundColor: Colors.red),
    StoryItem.text(title: 'Blue', backgroundColor: Colors.blue),
    StoryItem.text(title: 'Green', backgroundColor: Colors.green),
    // StoryItem.pageVideo('url', controller: storyController),
  ];
  final RxList storiesItems = [].obs;

  Future<void> getAllSpiritualSpotlightVideoInterview() async {
    final responseJson = await _apiServices.getAllStories();
    storiesItems.value = responseJson;
  }
}
