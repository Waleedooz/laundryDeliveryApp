import '../../../core/utils/image_constant.dart';
import 'product_item_model.dart';

/// This class defines the variables used in the [iron_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IronModel {
  // Rx<List<ProductItemModel>> productItemList =
  //     Rx(List.generate(6, (index) => ProductItemModel()));

  static List<ProductItemModel> productItemList(){
    return [
      ProductItemModel(ImageConstant.imgIron1st,"Shirts","\$2.5",1),
      ProductItemModel(ImageConstant.imgIron2nd,"Dhoti","\$8.0",2),
      ProductItemModel(ImageConstant.imgIron3rd,"Blazer","\$8.0",1),
      ProductItemModel(ImageConstant.imgIron4th,"T-Shirts","\$4.0",1),
      ProductItemModel(ImageConstant.imgIron5th,"Jeans","\$8.0",3),
      ProductItemModel(ImageConstant.imgIron6th,"Shorts","\$2.5",1),
    ];
  }

}
