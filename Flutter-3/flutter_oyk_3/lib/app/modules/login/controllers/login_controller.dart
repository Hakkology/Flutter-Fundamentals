import 'package:flutter/widgets.dart';
import 'package:flutter_oyk_3/app/data/models/login_model.dart';
import 'package:flutter_oyk_3/app/data/models/user_model.dart';
import 'package:flutter_oyk_3/app/data/providers/user_provider.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
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

  Future<User?> login() async {
    final response = await userProvider.fakeLogin(Login(
        username: usernameController.text, password: passwordController.text));
  }
}
