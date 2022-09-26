import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/app_assets.dart';
import '../routes/app_pages.dart';

class PostCards extends StatelessWidget {
  final int index;
  final String imagePath, title;

  const PostCards(
      {Key? key,
      required this.index,
      required this.imagePath,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      index == 0
          ? Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              height: Get.height * .15,
              width: Get.width,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage(AppAssets.libraryBackgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
            )
          : const SizedBox(),
      InkWell(
        onTap: () {
          Get.toNamed(Routes.BLOG_DETAILS);
        },
        child: Container(
          height: Get.height * .25,
          width: Get.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ]);
  }
}
