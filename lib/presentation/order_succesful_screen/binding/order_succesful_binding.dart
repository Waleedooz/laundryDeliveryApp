import '../controller/order_succesful_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderSuccesfulScreen.
///
/// This class ensures that the OrderSuccesfulController is created when the
/// OrderSuccesfulScreen is first loaded.
class OrderSuccesfulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderSuccesfulController());
  }
}
