import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';
import 'package:story_view/controller/story_controller.dart';

class StoryPageController extends GetxController {
  final StoryController storyController = StoryController();
  final ApiServices _apiServices = ApiServices();
  final RxList storiesItems = [].obs;

  Future<void> getAllSpiritualSpotlightVideoInterview() async {
    final responseJson = await _apiServices.getAllStories();
    storiesItems.value = responseJson;
  }
}
