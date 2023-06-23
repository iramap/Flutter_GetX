import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/main_controller.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.find();
    // var mainController = Get.find<MainControler>(); // another way to find already initialized controller.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => "Obx() Counter value : ${mainController.count}"
                  .text
                  .xl3
                  .semiBold
                  .make(),
            ),
            10.heightBox,
            ElevatedButton(
              onPressed: () {
                mainController.count--;
                mainController.update();
              },
              child: "Decrease Value".text.semiBold.make(),
            ),
            20.heightBox,
            GetBuilder<MainController>(
              builder: (controller) =>
                  "GetBuilder() Counter value : ${mainController.newCount}"
                      .text
                      .xl3
                      .semiBold
                      .make(),
            ),
            10.heightBox,
            ElevatedButton(
              onPressed: () {
                mainController.newCount--;
                mainController.update();
              },
              child: "Decrease Value".text.semiBold.make(),
            ),
          ],
        ),
      ),
    );
  }
}
