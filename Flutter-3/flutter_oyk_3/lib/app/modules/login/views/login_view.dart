import 'package:flutter/material.dart';
import 'package:flutter_oyk_3/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (context.isPhone
                  ? 15
                  : context.isTablet
                      ? context.mediaQuerySize.width / 4
                      : context.mediaQuerySize.width / 3)),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.name,
                controller: controller.usernameController,
                decoration: const InputDecoration(
                  hintText: "Username",
                  icon: Icon(Icons.person),
                ),
              ),
              Obx(() => TextField(
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                      suffix: IconButton(
                          onPressed: () {
                            controller.isObscure.value =
                                !controller.isObscure.value;
                          },
                          icon: controller.isObscure.value
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                      hintText: "Password",
                      icon: const Icon(Icons.password),
                    ),
                    obscureText: controller.isObscure.value,
                  )),
              ElevatedButton.icon(
                  onPressed: () async {
                    await controller.login();
                  },
                  icon: const Icon(Icons.login),
                  label: const Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
