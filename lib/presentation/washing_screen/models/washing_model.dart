import 'package:laundry_app/core/app_export.dart';
import 'washing_item_model.dart';

/// This class defines the variables used in the [washing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WashingModel {
  // Rx<List<WashingItemModel>> washingItemList =
  //     Rx(List.generate(6, (index) => WashingItemModel()));

  static List<WashingItemModel> washingItemList(){
   return [
    WashingItemModel(ImageConstant.imgWashing1st,"T-Shirts","\$2.5",1),
    WashingItemModel(ImageConstant.imgWashing2nd,"Jeggings","\$8.0",2),
    WashingItemModel(ImageConstant.imgWashing3rd,"Saree","\$15.0",1),
    WashingItemModel(ImageConstant.imgWashing4th,"Pant","\$8.0",2),
    WashingItemModel(ImageConstant.imgWashing5th,"Kurta","\$4.0",2),
    WashingItemModel(ImageConstant.imgWashing6th,"Top","\$4.0",1),
   ];
  }
}
