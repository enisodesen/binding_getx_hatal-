import 'package:binding/home_control.dart';
import 'package:binding/my_control.dart';
import 'package:get/get.dart';

class AllControlBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
