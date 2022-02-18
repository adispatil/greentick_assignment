import 'package:get/get.dart';
import 'package:greentick/screens/dashboard/controller/dashboard_controller.dart';
import 'package:greentick/screens/splash_screen/controller/splash_controller.dart';

class ControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
