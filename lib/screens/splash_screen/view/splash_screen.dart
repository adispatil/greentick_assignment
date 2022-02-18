import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:greentick/common/text_styles.dart';
import 'package:greentick/screens/splash_screen/controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'GreenTick Assignment',
                style: TextStyles.kTextH2BlackRegular,
              ),
              SizedBox(height: 20,),
              Text(
                'Developed by : Aditya Patil',
                style: TextStyles.kTextH4BlackRegular,
              ),
              SizedBox(height: 10,),
              Text(
                'Mob: +91-9021939021',
                style: TextStyles.kTextH4BlackRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
