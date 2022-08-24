import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/top_testimonials_controller.dart';

class TopTestimonialsView extends GetView<TopTestimonialsController> {
  const TopTestimonialsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Testimonials'),
        centerTitle: true,
      ),
      body: const Text('data'),
    );
  }
}
