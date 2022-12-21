import 'dart:developer';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogDetailsController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final RxBool isLoading = false.obs;
  final String id = Get.arguments['id'].toString();
  final RxString blogDetailString = ''.obs;
  final RxString blogImageUrl = ''.obs;
  final RxString blogTitle = ''.obs;
  final RxString bySabriyeAyana = ''.obs;
  final RxString authorDescription = ''.obs;
  final RxString authorImageUrl = ''.obs;
  final RxList relatedPostsList = [].obs;

  @override
  void onInit() async {
    isLoading.value = true;
    log(id);
    await getBlogDetailsById();
    await getRelatedPosts();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getBlogDetailsById() async {
    final responseJson = await _apiServices.getBlogDetailsById(id);
    blogDetailString.value = responseJson['content']['rendered'];
    blogImageUrl.value = responseJson['thumbnail'];
    blogTitle.value = responseJson['title']['rendered'];
    bySabriyeAyana.value = responseJson['about_author']['title'];
    authorDescription.value = responseJson['about_author']['description'];
    authorImageUrl.value = responseJson['about_author']['image'];
  }

  Future<void> getRelatedPosts() async {
    final responseJson = await _apiServices.getRelatedPosts();
    relatedPostsList.value = responseJson;
  }

  Future<void> openUrl(String? url) async {
    if (url != null) {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
        );
      }
    }
  }
}
