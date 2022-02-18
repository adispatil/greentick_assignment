import 'package:get/get.dart';
import 'package:greentick/screens/dashboard/controller/dashboard_controller.dart';

class ControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
          () => DashboardController(),
      fenix: true,
    );
  }
}