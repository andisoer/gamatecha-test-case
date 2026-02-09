import 'dart:developer';

import 'package:flutter_test_case/models/user_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  DetailController();

  Rx<UserModel?> user = Rx<UserModel?>(null);

  @override
  void onInit() async {
    super.onInit();
    await fetchUser();
  }

  Future<void> fetchUser() async {
    log("Fetch user");
    if (Get.arguments != null && Get.arguments is UserModel) {
      user.value = Get.arguments as UserModel;

      log("user ${user.value?.toJson()}");
    }
  }
}
