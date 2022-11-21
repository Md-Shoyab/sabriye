import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../constants/app_colors.dart';

class SessionTestimony extends StatelessWidget {
  final String reviewerName,
      reviewHighlightedText,
      reviewFullContent,
      profileImagePath;
  final double reviewRating;

  const SessionTestimony({
    Key? key,
    required this.reviewerName,
    required this.reviewHighlightedText,
    required this.reviewFullContent,
    required this.reviewRating,
    required this.profileImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(profileImagePath),
          ),
          const VerticalGap(gap: 8),
          Text(
            reviewerName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryColor,
            ),
          ),
          const VerticalGap(gap: 8),
          RatingBar.builder(
            ignoreGestures: true,
            initialRating: reviewRating,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {},
            itemSize: 20,
          ),
          Text(
            reviewFullContent,
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.4,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
