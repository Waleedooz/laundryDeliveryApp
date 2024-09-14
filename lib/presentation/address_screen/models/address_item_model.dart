import 'package:get/get.dart';

/// This class is used in the [address_item_widget] screen.

class AddressItemModel {
  Rx<String> homeTxt = Rx("Home");

  Rx<String> k4140parkerrdTxt =
      Rx("3891 Ranchview Dr. Richardson, \nCalifornia 62639");

  Rx<String>? id = Rx("");

  String? addressTitle;
  String? addressline1;
  String? addressline2;
  String? country;
  String? state;
  String? city;
  String? pinCode;
  String? mobileNumber;

  AddressItemModel(this.addressTitle, this.addressline1, this.addressline2,
      this.country, this.state, this.city, this.pinCode,this.mobileNumber);
}
