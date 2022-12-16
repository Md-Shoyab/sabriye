import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class TeachingsDetailsController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final String id = Get.arguments['id'].toString();
  final RxString teachingDetailContent = ''.obs;
  final RxString teachingImageUrl = ''.obs;
  final RxString teachingTitle = ''.obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getTeachingDetailsById();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getTeachingDetailsById() async {
    final responseJson = await _apiServices.getTeachingDetailsById(id);
    teachingDetailContent.value = responseJson['content']['rendered'];
    teachingImageUrl.value = responseJson['thumbnail'];
    teachingTitle.value = responseJson['title']['rendered'];
  }
}
