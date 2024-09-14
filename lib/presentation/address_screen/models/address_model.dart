import 'address_item_model.dart';

/// This class defines the variables used in the [address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddressModel {
  // Rx<List<AddressItemModel>> addressItemList =
  //     Rx(List.generate(3, (index) => AddressItemModel()));

  static List<AddressItemModel> addressItemList(){
   return [
    AddressItemModel("Home","3891 Ranchview","Dr. Richardson,","California","","","62639",""),
    AddressItemModel("Office","2972 Westheimer Rd.","","Santa Ana","Illinois","","85486",""),
    AddressItemModel("Home 2","4140 Parker Rd.","","Allentown","Santa Ana","New Mexico","85486",""),
   ];
  }
}
