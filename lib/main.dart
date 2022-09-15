import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/font_names.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sabriye',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        fontFamily: FontName.sourceSansPro,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
