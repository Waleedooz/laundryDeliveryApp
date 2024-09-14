import 'listalarm_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  // Rx<List<ListalarmItemModel>> listalarmItemList =
  //     Rx(List.generate(8, (index) => ListalarmItemModel()));

  static List<ListalarmItemModel> listalarmItemList(){
   return [
    ListalarmItemModel("Get 20% off on our Wash","when you bring minimum of 10 pounds of laundry.","3 h ago"),
    ListalarmItemModel("Wash & Fold Combo","Get 15% off when you choose our Wash","5 h ago"),
    ListalarmItemModel("Stain Removal Special","Removal Special and receive a complimentary","6 h ago"),
    ListalarmItemModel("VIP Loyalty Program","Become a valued member of our VIP Loyalty","9 h ago"),
    ListalarmItemModel("Wash and Fold Combo","your laundry load we'll take care of the rest","12 h ago"),
    ListalarmItemModel("Dry Cleaning Delight","delicate garments that need professional care","15 h ago"),
    ListalarmItemModel("Wash & Press Combo","laundry game with our Wash & Press Combo","18 h ago"),
    ListalarmItemModel("Bulk Load Bonus","Have a large laundry load? No worries","21 h ago"),
   ];
  }
}
