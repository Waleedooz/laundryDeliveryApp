import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/iron_screen/models/iron_model.dart';
import 'package:laundry_app/presentation/iron_screen/models/product_item_model.dart';/// A controller class for the IronScreen.
///
/// This class manages the state of the IronScreen, including the
/// current ironModelObj
class IronController extends GetxController {Rx<IronModel> ironModelObj = IronModel().obs;

void decreaseqty(ProductItemModel washingItemModelObj) {
  if(washingItemModelObj.qty!=0){
    washingItemModelObj.qty = washingItemModelObj.qty! - 1;
    update();
  }

}

void increaseqty(ProductItemModel washingItemModelObj) {
  washingItemModelObj.qty = washingItemModelObj.qty! + 1;
  update();
}

 }
