import 'package:get/get.dart';

/// This class is used in the [sliderexperienc_item_widget] screen.

class SliderexperiencItemModel {
  Rx<String>? id = Rx("");
  String? image;
  String? title;
  String? subtitle;
  SliderexperiencItemModel(this.image,this.title,this.subtitle);
}
