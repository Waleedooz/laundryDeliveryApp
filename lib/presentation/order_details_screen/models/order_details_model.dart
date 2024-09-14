import 'package:laundry_app/core/app_export.dart';
import 'order_details_item_model.dart';

/// This class defines the variables used in the [order_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderDetailsModel {
  // Rx<List<OrderDetailsItemModel>> orderDetailsItemList =
  //     Rx(List.generate(3, (index) => OrderDetailsItemModel()));

  static List<OrderDetailsItemModel> orderDetailsItemList(){
    return [
      OrderDetailsItemModel(ImageConstant.imgOrderItem1st,"Shirts","\$2.5"),
      OrderDetailsItemModel(ImageConstant.imgOrderItem2nd,"Jeggings","\$4.0"),
      OrderDetailsItemModel(ImageConstant.imgOrderItem3rd,"T-shirts","\$4.0"),
    ];
  }
}
