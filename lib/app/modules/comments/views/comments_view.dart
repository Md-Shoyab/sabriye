import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/gapper.dart';
import '../controllers/comments_controller.dart';

class CommentsView extends GetView<CommentsController> {
  const CommentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.commentsText,
          style: TextStyle(
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      bottomSheet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 25),
              width: Get.width * .8,
              child: TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: AppConstants.enterYourCommentsText,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
            child: IconButton(
              onPressed: () {
                debugPrint(AppConstants.sendCommentsText);
              },
              icon: const Icon(Icons.send),
            ),
          ),
        ],
      ),
      body: FutureBuilder<List>(
        future: controller.apiServices.getAllCommentsById(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(child: Text('0 Categories avaialible'));
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 2,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            snapshot.data![index]['author_avatar_urls']['96']),
                      ),
                      const HorizontalGap(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data![index]['author_name'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const VerticalGap(gap: 5),
                            Text(
                              snapshot.data![index]['content']['rendered']
                                  .toString()
                                  .replaceAll('<p>', '')
                                  .replaceAll('</p>', ''),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                height: 1.3,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Edit',
                                      style: TextStyle(
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Reply',
                                      style: TextStyle(
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
