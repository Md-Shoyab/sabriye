import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/constants/app_constants.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import '../../../../model/welcome_model.dart';

class WelcomeScreensController extends GetxController {
  final String loginToken = SessionManager.getUserToken();
  RxInt currentPageIndex = 0.obs;
  final welcomePageController = PageController();

  final List<WelcomePagesModel> welcomePages = [
    WelcomePagesModel(
      AppAssets.welcomeImage1,
      AppConstants.libraryTxt,
      AppConstants.newPardigmTeachingSubTxt,
    ),
    WelcomePagesModel(
      AppAssets.welcomeImage2,
      AppConstants.videoInterviewTxt,
      AppConstants.inSpritiualSpotlightSubTxt,
    ),
    WelcomePagesModel(
      AppAssets.welcomeImage3,
      AppConstants.innerUnionCircleTxt,
      AppConstants.pickACardReadingSubTxt,
    ),
  ];

  void updateSelectedIndex(int pageIndex) {
    currentPageIndex.value = pageIndex;
    debugPrint('This is page index ==> $pageIndex');
  }

  @override
  void onClose() {}
}
