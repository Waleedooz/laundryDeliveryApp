import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/verification_one_screen/models/verification_one_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationOneScreen.
///
/// This class manages the state of the VerificationOneScreen, including the
/// current verificationOneModelObj
class VerificationOneController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerificationOneModel> verificationOneModelObj = VerificationOneModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; }

@override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
