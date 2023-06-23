import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/main_controller.dart';
import 'package:flutter_getx/second_screen.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mainController = Get.put(MainController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Using Obx(), Increase value".text.xl2.semiBold.make(),
            10.heightBox,
            Obx(
              () => "Counter : ${mainController.count.value}"
                  .text
                  .xl3
                  .semiBold
                  .make(),
            ),
            ElevatedButton(
              onPressed: mainController.increaseValue,
              child: "Increase Value".text.semiBold.make(),
            ),
            10.heightBox,
            "Using GetBuilder(), Increase value".text.xl2.semiBold.make(),
            10.heightBox,
            GetBuilder<MainController>(builder: (controller) {
              return "Counter : ${mainController.newCount}"
                  .text
                  .xl3
                  .semiBold
                  .make();
            }),
            ElevatedButton(
              onPressed: mainController.increaseNewCountValue,
              child: "Increase Value".text.semiBold.make(),
            ),
            20.heightBox,
            ElevatedButton(
              onPressed: () {
                Get.to(() => const SecondScreen());
              },
              child: "Go to Second page".text.semiBold.make(),
            ),
            20.heightBox,
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
              child: "Dark Theme".text.semiBold.make(),
            ),
            20.heightBox,
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
              child: "Light Theme".text.semiBold.make(),
            ),
          ],
        ),
      ),
    );
  }
}
