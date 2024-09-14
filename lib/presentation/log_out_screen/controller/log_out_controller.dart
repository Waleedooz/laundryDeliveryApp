import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/log_out_screen/models/log_out_model.dart';/// A controller class for the LogOutScreen.
///
/// This class manages the state of the LogOutScreen, including the
/// current logOutModelObj
class LogOutController extends GetxController {Rx<LogOutModel> logOutModelObj = LogOutModel().obs;

 }
