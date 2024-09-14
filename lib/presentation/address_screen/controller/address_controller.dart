import 'package:laundry_app/core/app_export.dart';
import 'package:laundry_app/presentation/address_screen/models/address_model.dart';

import '../models/address_item_model.dart';

/// A controller class for the AddressScreen.
///
/// This class manages the state of the AddressScreen, including the
/// current addressModelObj
class AddressController extends GetxController {
  Rx<AddressModel> addressModelObj = AddressModel().obs;
  List<AddressItemModel> addressData = AddressModel.addressItemList();
int currentAddress = 0;
  void setCurrentAddreddIndex(int index) {
    currentAddress = index;
    update();
  }
}
