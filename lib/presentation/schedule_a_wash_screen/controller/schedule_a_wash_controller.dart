import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/presentation/schedule_a_wash_screen/models/schedule_a_wash_model.dart';

/// A controller class for the ScheduleAWashScreen.
///
/// This class manages the state of the ScheduleAWashScreen, including the
/// current scheduleAWashModelObj
class ScheduleAWashController extends GetxController {
  int currentPicupTime = 0;
  int currentDeliveryTime = 0;
  Rx<ScheduleAWashModel> scheduleAWashModelObj = ScheduleAWashModel().obs;

  void setCurrentPickupTime(int index) {
    currentPicupTime = index;
    update();
  }

  void setCurrentDeliveryTime(int index) {
    currentDeliveryTime = index;
    update();
  }
}
