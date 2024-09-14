import '../controller/city_selction_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CitySelctionScreen.
///
/// This class ensures that the CitySelctionController is created when the
/// CitySelctionScreen is first loaded.
class CitySelctionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CitySelctionController());
  }
}
