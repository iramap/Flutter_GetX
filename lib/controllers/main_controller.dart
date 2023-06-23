import 'package:get/get.dart';

class MainController extends GetxController {
  var count = 0.obs;
  var newCount = 0;
  increaseValue() {
    count++;
    // print(count);
  }

  increaseNewCountValue() {
    newCount++;
    refresh();
    // update(); // Manually trigger a rebuild of the widget that uses 'newCount'
    //  print(newCount);
  }
}
