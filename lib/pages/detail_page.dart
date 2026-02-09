import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test_case/controllers/detail_controller.dart';
import 'package:get/get.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Detail')),
      body: Obx(() {
        log("users ${controller.user.value?.toJson()}");
        return Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              backgroundImage: Platform.environment.containsKey('FLUTTER_TEST')
                  ? AssetImage('assets/images/dummy_avatar.png')
                  : NetworkImage(
                      controller.user.value?.avatar ?? '',
                    ),
            ),
            Text(
              controller.user.value?.firstName ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              controller.user.value?.lastName ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        );
      }),
    );
  }
}
