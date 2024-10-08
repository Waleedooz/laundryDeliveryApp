import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/add_a_card_screen/models/add_a_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddACardScreen.
///
/// This class manages the state of the AddACardScreen, including the
/// current addACardModelObj
class AddACardController extends GetxController {TextEditingController cardnumberController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<AddACardModel> addACardModelObj = AddACardModel().obs;

@override void onClose() { super.onClose(); cardnumberController.dispose(); dateController.dispose(); cvvController.dispose(); } 
 }
