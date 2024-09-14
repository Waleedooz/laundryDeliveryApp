import '../controller/home_page_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomePageContainer1Screen.
///
/// This class ensures that the HomePageContainer1Controller is created when the
/// HomePageContainer1Screen is first loaded.
class HomePageContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageContainer1Controller());
  }
}
