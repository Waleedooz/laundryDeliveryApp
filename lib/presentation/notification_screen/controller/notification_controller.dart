import 'package:laundry_app/core/app_export.dart';import 'package:laundry_app/presentation/notification_screen/models/notification_model.dart';/// A controller class for the NotificationScreen.
///
/// This class manages the state of the NotificationScreen, including the
/// current notificationModelObj
class NotificationController extends GetxController {Rx<NotificationModel> notificationModelObj = NotificationModel().obs;

 }
