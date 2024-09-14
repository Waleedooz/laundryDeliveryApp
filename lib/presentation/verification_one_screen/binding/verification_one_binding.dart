import '../controller/verification_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationOneScreen.
///
/// This class ensures that the VerificationOneController is created when the
/// VerificationOneScreen is first loaded.
class VerificationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationOneController());
  }
}
