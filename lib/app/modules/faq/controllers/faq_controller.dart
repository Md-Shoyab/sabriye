import 'package:get/get.dart';
import '../../../../services/api_services.dart';

class FaqController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final RxString faqText = ''.obs;
  final RxList faqQuestionList = [].obs;
  final RxList faqAnswerList = [].obs;
  final RxList faqTeachingsQuestionList = [].obs;
  final RxList faqTeachingsAnswerList = [].obs;
  final RxList faqAccountsQuestionList = [].obs;
  final RxList faqAccountsAnswerList = [].obs;
  final RxList faqTroubleshootQuestionList = [].obs;
  final RxList faqTroubleshootAnswerList = [].obs;
  final RxBool isLoading = false.obs;
  final RxBool isInnerCircleExpanded = false.obs;
  final RxBool isTeachingsExpanded = false.obs;
  final RxBool isAccountExpanded = false.obs;
  final RxBool isTroubleshootExpanded = false.obs;

  final faqCategoriesTitleList = [
    'The Inner Circle:',
    'The Teachings:',
    'Managing My Account:',
    'Troubleshooting:',
  ];

  @override
  void onInit() async {
    isLoading.value = true;
    await getFaqIntroText();
    await getFaqInnerUnion();
    await getFaqTeachings();
    await getFaqAccount();
    await getFaqTroubleshoot();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getFaqIntroText() async {
    final responseJson = await _apiServices.getFaqIntro();
    faqText.value = responseJson['content']['rendered'];
  }

  Future<void> getFaqInnerUnion() async {
    final responseJson = await _apiServices.getFaqInnerUnion();
    faqQuestionList.addAll([
      responseJson[0]['title']['rendered'],
      responseJson[1]['title']['rendered'],
      responseJson[2]['title']['rendered']
    ]);
    faqAnswerList.addAll([
      responseJson[0]['content']['rendered'],
      responseJson[1]['content']['rendered'],
      responseJson[2]['content']['rendered']
    ]);
  }

  Future<void> getFaqTeachings() async {
    final responseJson = await _apiServices.getFaqTeachings();
    faqTeachingsQuestionList.addAll([
      responseJson[0]['title']['rendered'],
      responseJson[1]['title']['rendered'],
      responseJson[2]['title']['rendered']
    ]);
    faqTeachingsAnswerList.addAll([
      responseJson[0]['content']['rendered'],
      responseJson[1]['content']['rendered'],
      responseJson[2]['content']['rendered']
    ]);
  }

  Future<void> getFaqAccount() async {
    final responseJson = await _apiServices.getFaqAccount();
    faqAccountsQuestionList.addAll([
      responseJson[0]['title']['rendered'],
      responseJson[1]['title']['rendered'],
      responseJson[2]['title']['rendered']
    ]);
    faqAccountsAnswerList.addAll([
      responseJson[0]['content']['rendered'],
      responseJson[1]['content']['rendered'],
      responseJson[2]['content']['rendered']
    ]);
  }

  Future<void> getFaqTroubleshoot() async {
    final responseJson = await _apiServices.getFaqTroubleshoot();
    faqTroubleshootQuestionList.addAll([
      responseJson[0]['title']['rendered'],
      responseJson[1]['title']['rendered'],
      responseJson[2]['title']['rendered']
    ]);
    faqTroubleshootAnswerList.addAll([
      responseJson[0]['content']['rendered'],
      responseJson[1]['content']['rendered'],
      responseJson[2]['content']['rendered']
    ]);
  }
}
