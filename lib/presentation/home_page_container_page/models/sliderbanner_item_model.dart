import 'package:get/get.dart';

/// This class is used in the [sliderbanner_item_widget] screen.

class SliderbannerItemModel {
  Rx<String>? id = Rx("");
  String? image;
  String? title;
  SliderbannerItemModel(this.image,this.title);
}
