import 'package:flutter/cupertino.dart';
import 'package:laundry_app/core/app_export.dart';

/// A controller class for the ResetPasswordScreen.
///
/// This class manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj
class ResetPasswordController extends GetxController {
 TextEditingController newpasswordController = TextEditingController();

 TextEditingController confirmpasswordController = TextEditingController();


 Rx<bool> isShowPassword = true.obs;

 Rx<bool> isShowPassword1 = true.obs;
}
