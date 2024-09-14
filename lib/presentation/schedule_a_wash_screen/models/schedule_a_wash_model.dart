import 'package:get/get.dart';
import 'package:laundry_app/presentation/schedule_a_wash_screen/models/picup_time_model.dart';
import 'delivery_time_model.dart';
import 'listdate_item_model.dart';
import 'listdate1_item_model.dart';

/// This class defines the variables used in the [schedule_a_wash_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScheduleAWashModel {
  Rx<List<ListdateItemModel>> listdateItemList =
      Rx(List.generate(3, (index) => ListdateItemModel()));

  Rx<List<Listdate1ItemModel>> listdate1ItemList =
      Rx(List.generate(3, (index) => Listdate1ItemModel()));


  static List<PickupTime> getPickupTime(){
   return [
    PickupTime("12:00 am"),
    PickupTime("02:00 pm"),
    PickupTime("04:00 pm"),
    PickupTime("06:00 pm"),
    PickupTime("08:00 am"),
   ];
  }

  static List<DeliveryTime> getDeliveryTime(){
   return [
     DeliveryTime("12:00 am"),
     DeliveryTime("02:00 pm"),
     DeliveryTime("04:00 pm"),
     DeliveryTime("06:00 pm"),
     DeliveryTime("08:00 am"),
   ];
  }
}
