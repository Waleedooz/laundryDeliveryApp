import 'package:laundry_app/core/app_export.dart';
import '../../dry_clean_screen/models/product1_item_model.dart';

/// This class defines the variables used in the [cloth_fold_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ClothFoldModel {
  // Rx<List<Product2ItemModel>> product2ItemList =
  //     Rx(List.generate(6, (index) => Product2ItemModel()));

  static List<Product1ItemModel> product2ItemList(){
    return [
      Product1ItemModel(ImageConstant.imgClothFold1st,"Apron","\$4.0",2),
      Product1ItemModel(ImageConstant.imgClothFold2nd,"Bed sheet ","\$4.0",1),
      Product1ItemModel(ImageConstant.imgClothFold3rd,"Bed cover","\$15.0",2),
      Product1ItemModel(ImageConstant.imgClothFold4th,"Blanket","\$20.0",2),
      Product1ItemModel(ImageConstant.imgClothFold5th,"Bath towel","\$4.0",2),
      Product1ItemModel(ImageConstant.imgClothFold6th,"Hand towel","\$2.5",1),
    ];
  }
}
