import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../constants/app_colors.dart';

class SessionTestimony extends StatelessWidget {
  final String reviewerName, reviewFullContent, profileImagePath;
  final double reviewRating;

  const SessionTestimony({
    Key? key,
    required this.reviewerName,
    required this.reviewFullContent,
    required this.reviewRating,
    required this.profileImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColor.grey,
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
          Html(
            data: reviewFullContent,
            style: {
              "h2": Style(
                textAlign: TextAlign.center,
                fontSize: FontSize.medium,
              ),
              "p": Style(textAlign: TextAlign.center),
            },
          ),
        ],
      ),
    );
  }
}
