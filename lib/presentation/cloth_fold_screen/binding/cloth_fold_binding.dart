import '../controller/cloth_fold_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ClothFoldScreen.
///
/// This class ensures that the ClothFoldController is created when the
/// ClothFoldScreen is first loaded.
class ClothFoldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClothFoldController());
  }
}
