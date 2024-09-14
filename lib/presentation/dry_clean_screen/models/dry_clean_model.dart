import '../../../core/utils/image_constant.dart';
import 'product1_item_model.dart';

/// This class defines the variables used in the [dry_clean_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DryCleanModel {
  // Rx<List<Product1ItemModel>> product1ItemList =
  //     Rx(List.generate(6, (index) => Product1ItemModel()));


  static List<Product1ItemModel> product1ItemList(){
    return [
      Product1ItemModel(ImageConstant.imgDryClean1st,"Shirts","\$2.5",1),
      Product1ItemModel(ImageConstant.imgDryClean2nd,"T-Shirts","\$2.5",2),
      Product1ItemModel(ImageConstant.imgDryClean3rd,"Frock","\$2.5",2),
      Product1ItemModel(ImageConstant.imgDryClean4th,"Kurta","\$2.5",1),
      Product1ItemModel(ImageConstant.imgDryClean5th,"Dress","\$4.0",1),
      Product1ItemModel(ImageConstant.imgDryClean6th,"Shorts","\$2.5",1),
    ];
  }
}
