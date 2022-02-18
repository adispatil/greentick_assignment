import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greentick/screens/dashboard/view/dashboard_screen.dart';
import 'package:greentick/screens/splash_screen/view/splash_screen.dart';
import 'package:greentick/screens/store_list/view/store_list_screen.dart';

import 'common/controller_bindings.dart';
import 'common/route_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GreenTick Assignment',
      initialBinding: ControllerBindings(),
      defaultTransition: Transition.native,
      initialRoute: kRouteSplashScreen,
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.full,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routingCallback: (value) {
        print('###### routing callback : $value');
      },
      getPages: [
        GetPage(
          name: kRouteSplashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: kRouteDashboardScreen,
          page: () => const DashboardScreen(),
        ),
        GetPage(
          name: kRouteStoreListScreen,
          page: () => StoreListScreen(),
        ),
      ],
    );
  }
}
