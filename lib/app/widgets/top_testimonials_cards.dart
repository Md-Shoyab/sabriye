import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../constants/app_colors.dart';
import 'gapper.dart';

class TopTestimonialCard extends StatelessWidget {
  final String reviwerName;
  final String reviewText;
  final String imagePath;
  final String professionText;

  const TopTestimonialCard({
    Key? key,
    required this.reviwerName,
    required this.reviewText,
    required this.imagePath,
    required this.professionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      padding: const EdgeInsets.all(8),
      height: 270,
      width: Get.width * .9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: AppColors.bgColor,
            blurRadius: 4,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          const VerticalGap(gap: 20),
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 30,
          ),
          const VerticalGap(gap: 8),
          Text(
            reviwerName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(professionText),
          const VerticalGap(),
          RatingBar.builder(
            initialRating: 5.0,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {},
            itemSize: 20,
          ),
          const VerticalGap(),
          Text(
            reviewText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
