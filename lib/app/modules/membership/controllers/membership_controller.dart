import 'package:get/get.dart';
import 'package:sabriye/model/membership_accordion.dart';
import 'package:sabriye/services/api_services.dart';

class MembershipController extends GetxController {
  late List<MemberShipAccordionItem> membershipAccordionItem;
  final ApiServices _apiServices = ApiServices();
  late Uri lifetimePlanUri = Uri.parse(lifetimePlanUrl.value);
  late Uri annualPlanUri = Uri.parse(annualPlanUrl.value);
  late Uri weeklyTrialPlanUri = Uri.parse(weeklyTrialPlanUrl.value);
  RxString htmlIntro = ''.obs;
  RxString lifetimePlanUrl = ''.obs;
  RxString annualPlanUrl = ''.obs;
  RxString weeklyTrialPlanUrl = ''.obs;
  RxString checkPointsList = ''.obs;
  RxList accordionList = [].obs;
  RxList membershipPlansDetails = [].obs;
  RxBool isLoading = false.obs;
  RxInt selectedAccordionIndex = (-1).obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getMembershipIntro();
    await getMembershipAccordion();
    await getMembershipCheckPoints();
    await getMembershipPlansDetails();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getMembershipIntro() async {
    final responseJson = await _apiServices.membershipIntro();
    htmlIntro.value = responseJson['content']['rendered'];
  }

  Future<void> getMembershipAccordion() async {
    final responseJson = await _apiServices.membershipAccordion();
    accordionList.value = responseJson;
  }

  Future<void> getMembershipCheckPoints() async {
    final responseJson = await _apiServices.membershipCheckPoints();
    checkPointsList.value = responseJson['content']['rendered'];
  }

  Future<void> getMembershipPlansDetails() async {
    final responseJson = await _apiServices.getMembershipPlansDetails();
    membershipPlansDetails.value = responseJson;
    lifetimePlanUrl.value =
        membershipPlansDetails[0]['custom_fields']['payment-btn-link'][0];
    annualPlanUrl.value =
        membershipPlansDetails[1]['custom_fields']['payment-btn-link'][0];
    weeklyTrialPlanUrl.value =
        membershipPlansDetails[2]['custom_fields']['payment-btn-link'][0];
  }

  void changeSelectedAccordion(int index) {
    if (index == selectedAccordionIndex.value) {
      selectedAccordionIndex.value = -1;
    } else {
      selectedAccordionIndex.value = index;
    }
  }
}
