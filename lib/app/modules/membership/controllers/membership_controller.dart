import 'package:get/get.dart';
import 'package:sabriye/model/membership_accordion.dart';
import 'package:sabriye/services/api_services.dart';

class MembershipController extends GetxController {
  late List<MemberShipAccordionItem> membershipAccordionItem;
  final ApiServices apiServices = ApiServices();
  // RxBool isExpanded = false.obs;

  // void isExpandedUpdate() {
  //   isExpanded.value = !isExpanded.value;
  // }

  final List<String> headerText = [
    'Healing the subconscious',
    'Inner Union & Ascension',
    'Heaven on Earth, or 5D',
    'New Paradigm Spirituality',
    'Sacred Relationships'
  ];
  @override
  void onInit() {
    membershipAccordionItem = generateItems(4);
    apiServices.getMembershipDetails();
    super.onInit();
  }

  @override
  void onClose() {}

  List<MemberShipAccordionItem> generateItems(int numberOfItems) {
    return List.generate(numberOfItems, (int index) {
      return MemberShipAccordionItem(
          headerText[index],
          'The people, situations, and experiences in our lives today are connected to the unprocessed trauma, emotions, and unresolved pain carried within our subconscious mind that is bleeding through from previous timelines such as past lives, ancestral, and early current life. Healing the subconscious mind heals our physical reality experience.',
          false.obs);
    });
  }
}
