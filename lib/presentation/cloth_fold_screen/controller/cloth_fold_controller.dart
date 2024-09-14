import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/presentation/cloth_fold_screen/models/cloth_fold_model.dart';

import '../../dry_clean_screen/models/product1_item_model.dart';

/// A controller class for the ClothFoldScreen.
///
/// This class manages the state of the ClothFoldScreen, including the
/// current clothFoldModelObj
class ClothFoldController extends GetxController {
  Rx<ClothFoldModel> clothFoldModelObj = ClothFoldModel().obs;


  void decreaseqty(Product1ItemModel product2ItemModelObj) {
   if(product2ItemModelObj.qty!=0){
    product2ItemModelObj.qty = product2ItemModelObj.qty! - 1;
    update();
   }

  }

  void increaseqty(Product1ItemModel product2ItemModelObj) {
   product2ItemModelObj.qty = product2ItemModelObj.qty! + 1;
   update();
  }
}
