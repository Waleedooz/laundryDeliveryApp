import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/add_new_address_screen/models/add_new_address_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController addressoneController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); nameController.dispose(); addressController.dispose(); addressoneController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewAddressModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewAddressModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addNewAddressModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewAddressModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in addNewAddressModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewAddressModelObj.value.dropdownItemList2.refresh(); } 
 }
