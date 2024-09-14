import '../controller/iron_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IronScreen.
///
/// This class ensures that the IronController is created when the
/// IronScreen is first loaded.
class IronBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IronController());
  }
}
