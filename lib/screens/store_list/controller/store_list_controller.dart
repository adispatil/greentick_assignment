import 'package:get/get.dart';
import 'package:greentick/screens/dashboard/controller/dashboard_controller.dart';

class StoreListController extends GetxController {
  RxList<StoreModel> storeList = List<StoreModel>.empty(growable: true).obs;

  void setIntentData(dynamic intentData) {
    if (intentData != null) {
      try {
        var list = intentData[0];
        if (list is List<StoreModel>) {
          if (storeList.isEmpty) {
            storeList.addAll(list);
            storeList.refresh();

          }
        }
      } catch (ex) {
        ex.printError();
      }
    }
  }
}
