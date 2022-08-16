import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 130,
                    width: 130,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppAssets.profileImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const VerticalGap(gap: 30),
            const Text('First Name'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Sia',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            const Text('Last Name'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Corner',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(gap: 20),
            const Text('Email'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Corner@example.com',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}