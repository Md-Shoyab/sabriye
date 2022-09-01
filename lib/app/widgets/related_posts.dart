import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';

class RelatedPost extends StatelessWidget {
  const RelatedPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalGap(gap: 10),
        Container(
          margin: const EdgeInsets.only(left: 8),
          height: Get.height * .15,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const VerticalGap(gap: 5),
        Container(
          margin: const EdgeInsets.only(left: 10),
          width: 200,
          child: const Text(
            'The Nine Levels of Twin Flames Initiations...',
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
