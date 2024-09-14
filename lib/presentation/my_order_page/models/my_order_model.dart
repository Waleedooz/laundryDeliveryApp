import 'orderdetails_item_model.dart';

/// This class defines the variables used in the [my_order_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrderModel {
  // Rx<List<OrderdetailsItemModel>> orderdetailsItemList =
  //     Rx(List.generate(7, (index) => OrderdetailsItemModel()));

  static List<OrderdetailsItemModel> orderdetailsItemList(){
    return [
      OrderdetailsItemModel("Washing","123987254","25 June 2023","Pending"),
      OrderdetailsItemModel("Iron","123987254","25 June 2023","Cancelled"),
      OrderdetailsItemModel("Dry clean","123987254","25 June 2023","Completed"),
      OrderdetailsItemModel("Washing","123987254","25 June 2023","Pending"),
      OrderdetailsItemModel("Iron","123987254","25 June 2023","Cancelled"),
      OrderdetailsItemModel("Dry clean","123987254","25 June 2023","Completed"),
      OrderdetailsItemModel("Dry clean","123987254","25 June 2023","Cancelled"),
    ];
  }
}
