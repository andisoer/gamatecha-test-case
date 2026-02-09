import 'package:flutter_test_case/controllers/detail_controller.dart';
import 'package:flutter_test_case/utils/asset_loader.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssetLoader>(() => AssetLoader());
    Get.lazyPut<DetailController>(() => DetailController());
  }
}
