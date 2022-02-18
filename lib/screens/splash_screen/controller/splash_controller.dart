import 'package:get/get.dart';
import 'package:greentick/common/route_constants.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    navigateToNewScreen();
  }

  void navigateToNewScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.offNamed(kRouteDashboardScreen);
    });
  }
}
