import 'package:get/get.dart';

/// This class is used in the [washing_item_widget] screen.

class WashingItemModel {
  Rx<String> itemnameTxt = Rx("T-Shirts");

  Rx<String>? id = Rx("");
  String? image;
  String? title;
  String? price;
  int? qty;
  WashingItemModel(this.image,this.title,this.price,this.qty);

}
