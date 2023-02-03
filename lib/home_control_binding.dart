import 'package:binding/home_control.dart';
import 'package:get/get.dart';

class HomeControlBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
