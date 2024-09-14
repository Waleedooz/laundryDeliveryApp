import '../controller/schedule_a_wash_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScheduleAWashScreen.
///
/// This class ensures that the ScheduleAWashController is created when the
/// ScheduleAWashScreen is first loaded.
class ScheduleAWashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleAWashController());
  }
}
