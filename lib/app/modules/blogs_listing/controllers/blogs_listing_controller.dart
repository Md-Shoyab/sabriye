import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import '../../../../services/api_services.dart';

class BlogsListingController extends GetxController {
  final ApiServices post = ApiServices();

  final List blogListImage = <String>[
    AppAssets.blogImage1,
    AppAssets.blogImage2,
    AppAssets.blogImage3,
  ];

  final List blogListTitle = <String>[
    'How I Received the Soul Call to Move to...',
    'Why Lack of Money Isn’t Caused Ext …',
    'The Magic Is In the ‘Last’ S …',
  ];

  @override
  void onClose() {}

  @override
  void onInit() {
    post.getAllPost();
    super.onInit();
  }
}
