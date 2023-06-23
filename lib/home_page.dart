// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_getx/controllers/main_controller.dart';
import 'package:flutter_getx/second_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  bool isDarkTheme = true;

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
                if (isDarkTheme) {
                  Get.changeTheme(ThemeData.dark());
                  isDarkTheme = false;
                } else {
                  Get.changeTheme(ThemeData.light());
                  isDarkTheme = true;
                }
              },
              child: "Change Theme".text.semiBold.make(),
            ),
            10.heightBox,
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Flutter GetX App", "This is GetX Snackbar",
                    backgroundColor: Colors.cyan);
              },
              child: "Show Snackbar".text.semiBold.make(),
            ),
            10.heightBox,
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Flutter GetX App",
                    content: const Text("This is GetX Dialog box"));
              },
              child: "Show Dialog Box".text.semiBold.make(),
            ),
          ],
        ),
      ),
    );
  }
}
