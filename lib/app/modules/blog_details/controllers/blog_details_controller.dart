import 'dart:developer';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class BlogDetailsController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final RxBool isLoading = false.obs;
  final String id = Get.arguments['id'].toString();
  final RxString blogDetailString = ''.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    log(id);
    await getBlogDetailsById();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getBlogDetailsById() async {
    final responseJson = await _apiServices.getBlogDetailsById(id);
    blogDetailString.value = responseJson['content']['rendered'];
  }
}

  // final List<String> relatedPostImages = [
  //   AppAssets.relatedPost1,
  //   AppAssets.relatedPost2,
  //   AppAssets.relatedPost3,
  // ];