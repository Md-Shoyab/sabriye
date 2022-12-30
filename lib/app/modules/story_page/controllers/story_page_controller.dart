import 'package:get/get.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryPageController extends GetxController {
  final StoryController storyController = StoryController();
  final RxList storiesItems = Get.arguments['storiesData'];
  final RxList finalStoriesItem = <StoryItem?>[].obs;
}
