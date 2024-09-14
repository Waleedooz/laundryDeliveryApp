import 'package:get/get.dart';

/// This class is used in the [product1_item_widget] screen.

class Product1ItemModel {
  Rx<String> itemnameTxt = Rx("Shirts");

  Rx<String>? id = Rx("");
  String? image;
  String? title;
  String? price;
  int? qty;
  Product1ItemModel(this.image,this.title,this.price,this.qty);

}
