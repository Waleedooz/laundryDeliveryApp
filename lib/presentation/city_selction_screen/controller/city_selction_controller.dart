import 'package:laundry_app/core/app_export.dart';
import 'package:flutter/material.dart';

/// A controller class for the CitySelctionScreen.
///
/// This class manages the state of the CitySelctionScreen, including the
/// current citySelctionModelObj
class CitySelctionController extends GetxController {
  TextEditingController searchController = TextEditingController();
  int currentCity = 0;

  void setCurrentCity(int index) {
    currentCity = index;
    update();
  }

  // Rx<CitySelctionModel> citySelctionModelObj = CitySelctionModel().obs;


}
