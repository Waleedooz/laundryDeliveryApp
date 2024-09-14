import '../controller/address_option_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddressOptionScreen.
///
/// This class ensures that the AddressOptionController is created when the
/// AddressOptionScreen is first loaded.
class AddressOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddressOptionController());
  }
}
