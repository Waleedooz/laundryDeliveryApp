import '../controller/password_reset_successs_pop_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PasswordResetSuccesssPopUpScreen.
///
/// This class ensures that the PasswordResetSuccesssPopUpController is created when the
/// PasswordResetSuccesssPopUpScreen is first loaded.
class PasswordResetSuccesssPopUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordResetSuccesssPopUpController());
  }
}
