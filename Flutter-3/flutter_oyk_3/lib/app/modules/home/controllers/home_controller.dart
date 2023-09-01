import 'package:flutter_oyk_3/app/data/models/user_model.dart';
import 'package:flutter_oyk_3/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  final box = GetStorage();
  User? user;

  @override
  void onInit() {
    final args = Get.arguments;
    final storedUser = box.read("User");

    user = args ?? User.fromJson(storedUser);
    super.onInit();
  }

  @override
  void onReady() {
    if (user == null) {
      Get.offAllNamed(Routes.LOGIN);
    }
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
