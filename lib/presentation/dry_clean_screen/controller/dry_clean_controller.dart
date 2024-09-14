import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/presentation/dry_clean_screen/models/dry_clean_model.dart';

import '../models/product1_item_model.dart';

/// A controller class for the DryCleanScreen.
///
/// This class manages the state of the DryCleanScreen, including the
/// current dryCleanModelObj
class DryCleanController extends GetxController {
  Rx<DryCleanModel> dryCleanModelObj = DryCleanModel().obs;

  void decreaseqty(Product1ItemModel product1ItemModelObj) {
   if(product1ItemModelObj.qty!=0){
    product1ItemModelObj.qty = product1ItemModelObj.qty! - 1;
    update();
   }

  }

  void increaseqty(Product1ItemModel product1ItemModelObj) {
   product1ItemModelObj.qty = product1ItemModelObj.qty! + 1;
   update();
  }
}
