import 'package:get/get.dart';

/// This class is used in the [order_details_item_widget] screen.

class OrderDetailsItemModel {
  Rx<String> itemnameTxt = Rx("Shirts");

  Rx<String>? id = Rx("");

  String? image;
  String? title;
  String? price;
  OrderDetailsItemModel(this.image,this.title,this.price);
}
