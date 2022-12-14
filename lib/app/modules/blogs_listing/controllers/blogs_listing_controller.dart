import 'package:get/get.dart';
import '../../../../services/api_services.dart';

class BlogsListingController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final RxList blogsLists = [].obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getAllPostList();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getAllPostList() async {
    final responseJson = await _apiServices.getAllPost();
    blogsLists.value = responseJson;
  }
}
