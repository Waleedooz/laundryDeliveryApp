import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/add_a_card_one_screen/models/add_a_card_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddACardOneScreen.
///
/// This class manages the state of the AddACardOneScreen, including the
/// current addACardOneModelObj
class AddACardOneController extends GetxController {TextEditingController cardnumberController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddACardOneModel> addACardOneModelObj = AddACardOneModel().obs;

@override void onClose() { super.onClose(); cardnumberController.dispose(); dateController.dispose(); cvvController.dispose(); } 
 }
