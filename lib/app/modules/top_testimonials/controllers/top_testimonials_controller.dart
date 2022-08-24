import 'package:get/get.dart';

import '../../../constants/app_assets.dart';

class TopTestimonialsController extends GetxController {
  final reviewerName = <String>[
    'REENA BAHARANI',
    'MIROSLAVA D.',
    'NATASHA LEIGH BRAY',
  ];
  final professionText = <String>[
    'Medical Doctor',
    'Business Owner',
    'Multi 7 figure Healer & founder HeartHealing®',
  ];

  final reviewText = <String>[
    '“I have worked with other healers and having one session with Sabriyé was the equivalent of 8-10 sessions with someone else.”',
    '““… we did a session to release blocks on money, … and I more than doubled my income.”',
    '“… Sabriyé is an amazing healer. I loved my Akasha healing sessions with her. I saw improvements in my business and relationships thanks to the work we did.”',
  ];

  final reviewProfileImage = <String>[
    AppAssets.testimonialsProfileImage,
    AppAssets.testimonialsProfileImage2,
    AppAssets.testimonialsProfileImage3,
  ];

  @override
  void onClose() {}
}
