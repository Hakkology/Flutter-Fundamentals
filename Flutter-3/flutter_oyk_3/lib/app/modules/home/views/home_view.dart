import 'package:flutter/material.dart';

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
      ),
      body: Center(
        child: Column(
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
                icon: const Icon(Icons.plus_one_sharp)),
          ],
        ),
      ),
    );
  }
}
