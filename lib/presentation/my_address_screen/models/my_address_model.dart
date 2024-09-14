import 'package:get/get.dart';import 'myaddress_item_model.dart';/// This class defines the variables used in the [my_address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAddressModel {Rx<List<MyaddressItemModel>> myaddressItemList = Rx(List.generate(3,(index) => MyaddressItemModel()));

 }
