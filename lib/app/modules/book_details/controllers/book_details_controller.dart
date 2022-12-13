import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class BookDetailsController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final RxBool isLoading = false.obs;
  final RxString freeEbookData = ''.obs;
  final RxString guideToInnerUnionText = ''.obs;
  final RxString freeEbookImageUrl = ''.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getFreeEbook();
    super.onInit();
    isLoading.value = false;
  }

  Future<void> getFreeEbook() async {
    final responseJson = await _apiServices.getBookDetails();
    freeEbookData.value = responseJson['content']['rendered'];
    guideToInnerUnionText.value = responseJson['title']['rendered'];
    freeEbookImageUrl.value = responseJson['thumbnail'];
  }
}
