import '../controller/washing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WashingScreen.
///
/// This class ensures that the WashingController is created when the
/// WashingScreen is first loaded.
class WashingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WashingController());
  }
}
