import 'package:get/get.dart';

/// This class is used in the [listalarm_item_widget] screen.

class ListalarmItemModel {
  Rx<String> offerTxt = Rx("Get 20% off on our Wash ");

  Rx<String> k15discountonTxt =
      Rx("when you bring minimum of 10 pounds of laundry.");

  Rx<String> offertimeTxt = Rx("3 h ago");

  Rx<String>? id = Rx("");

  String? title;
  String? messege;
  String? time;
  ListalarmItemModel(this.title,this.messege,this.time);

}
