import 'package:flutter/widgets.dart';
import 'package:flutter_oyk_3/app/data/models/login_model.dart';
import 'package:flutter_oyk_3/app/data/models/user_model.dart';
import 'package:flutter_oyk_3/app/data/providers/user_provider.dart';
import 'package:flutter_oyk_3/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final box = GetStorage();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final isObscure = true.obs;
  final userProvider = Get.find<UserProvider>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  Future<void> login() async {
    final response = await userProvider.fakeLogin(Login(
        username: usernameController.text, password: passwordController.text));
    if (response != null) {
      box.write("User", response.toJson());
      Get.offAllNamed(Routes.HOME, arguments: response);
    } else {
      Get.snackbar("ERROR", "401");
    }
  }
}
