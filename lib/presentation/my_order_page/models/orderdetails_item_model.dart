import 'package:get/get.dart';

/// This class is used in the [orderdetails_item_widget] screen.

class OrderdetailsItemModel {
  Rx<String> typeTxt = Rx("Washing");

  Rx<String>? id = Rx("");
  String? title;
  String? orderNo;
  String? date;
  String? status;
  OrderdetailsItemModel(this.title,this.orderNo,this.date,this.status);

}
