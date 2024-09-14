import '../controller/dry_clean_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DryCleanScreen.
///
/// This class ensures that the DryCleanController is created when the
/// DryCleanScreen is first loaded.
class DryCleanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DryCleanController());
  }
}
