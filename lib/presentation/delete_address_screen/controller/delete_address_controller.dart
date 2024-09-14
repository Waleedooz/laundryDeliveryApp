import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/delete_address_screen/models/delete_address_model.dart';/// A controller class for the DeleteAddressScreen.
///
/// This class manages the state of the DeleteAddressScreen, including the
/// current deleteAddressModelObj
class DeleteAddressController extends GetxController {Rx<DeleteAddressModel> deleteAddressModelObj = DeleteAddressModel().obs;

 }
