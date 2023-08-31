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
              icon: const Icon(Icons.login))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter count:',
              style: TextStyle(fontSize: 20),
            ),
            Obx(() => Text(
                  "${controller.count.value}",
                  style: Theme.of(context).textTheme.displayMedium,
                )),
            IconButton(
                onPressed: () {
                  controller.increment();
                },
                style: IconButton.styleFrom(minimumSize: const Size(40, 40)),
                icon: const Icon(Icons.plus_one_rounded)),
          ],
        ),
      ),
    );
  }
}
