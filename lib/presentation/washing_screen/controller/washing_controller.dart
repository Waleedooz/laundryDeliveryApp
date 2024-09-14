import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/presentation/washing_screen/models/washing_item_model.dart';import 'package:laundry_app/presentation/washing_screen/models/washing_model.dart';/// A controller class for the WashingScreen.
///
/// This class manages the state of the WashingScreen, including the
/// current washingModelObj
class WashingController extends GetxController {Rx<WashingModel> washingModelObj = WashingModel().obs;

  void decreaseqty(WashingItemModel washingItemModelObj) {
    if(washingItemModelObj.qty!=0){
      washingItemModelObj.qty = washingItemModelObj.qty! - 1;
      update();
    }

  }

  void increaseqty(WashingItemModel washingItemModelObj) {
      washingItemModelObj.qty = washingItemModelObj.qty! + 1;
      update();
  }

 }
