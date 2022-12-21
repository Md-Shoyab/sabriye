import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';
import 'package:url_launcher/url_launcher.dart';

class TeachingsDetailsController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final String id = Get.arguments['id'].toString();
  final RxString teachingDetailContent = ''.obs;
  final RxString teachingImageUrl = ''.obs;
  final RxString teachingTitle = ''.obs;
  final RxList relatedPostsList = [].obs;
  final RxBool isLoading = false.obs;
  final RxString bySabriyeAyana = ''.obs;
  final RxString authorDescription = ''.obs;
  final RxString authorImageUrl = ''.obs;
  final RxString pressedUrl = ''.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getTeachingDetailsById();
    await getRelatedPosts();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getTeachingDetailsById() async {
    final responseJson = await _apiServices.getTeachingDetailsById(id);
    teachingDetailContent.value = responseJson['content']['rendered'];
    teachingImageUrl.value = responseJson['thumbnail'];
    teachingTitle.value = responseJson['title']['rendered'];
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
