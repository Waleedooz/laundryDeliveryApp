import '../controller/delete_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeleteAddressScreen.
///
/// This class ensures that the DeleteAddressController is created when the
/// DeleteAddressScreen is first loaded.
class DeleteAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeleteAddressController());
  }
}
