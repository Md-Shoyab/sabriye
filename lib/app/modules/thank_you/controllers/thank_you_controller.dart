import 'package:get/get.dart';
import '../../../../services/api_services.dart';

class ThankYouController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  RxBool isLoading = false.obs;
  RxString thankYouScreenData = ''.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getAllTeachingsCategories();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getAllTeachingsCategories() async {
    final responseJson = await _apiServices.getThankYouApi();
    thankYouScreenData.value = responseJson['content']['rendered'];
  }
}
