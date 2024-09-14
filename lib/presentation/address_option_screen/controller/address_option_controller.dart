import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/address_option_screen/models/address_option_model.dart';/// A controller class for the AddressOptionScreen.
///
/// This class manages the state of the AddressOptionScreen, including the
/// current addressOptionModelObj
class AddressOptionController extends GetxController {Rx<AddressOptionModel> addressOptionModelObj = AddressOptionModel().obs;

 }
