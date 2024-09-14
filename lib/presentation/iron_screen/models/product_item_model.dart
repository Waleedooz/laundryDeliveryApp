import 'package:get/get.dart';

/// This class is used in the [product_item_widget] screen.

class ProductItemModel {
  Rx<String> itemnameTxt = Rx("Shirts");

  Rx<String>? id = Rx("");
  String? image;
  String? title;
  String? price;
  int? qty;
  ProductItemModel(this.image,this.title,this.price,this.qty);
}
