import 'package:flutter/material.dart';
import 'package:flutter_oyk_3/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coolest counter app dude'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.offNamed(Routes.LOGIN);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: controller.user == null
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text(
                        "${controller.user!.firstname} ${controller.user!.lastname}"),
                    subtitle: Text("${controller.user!.email}"),
                    trailing: Text(
                        "${DateTime.now().year - int.parse(controller.user!.birthdate!)}"),
                  ),
                  IconButton(
                      onPressed: () {
                        controller.increment();
                      },
                      style:
                          IconButton.styleFrom(minimumSize: const Size(40, 40)),
                      icon: const Icon(Icons.plus_one_rounded)),
                ],
              ),
      ),
    );
  }
}
