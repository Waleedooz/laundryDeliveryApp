import 'package:laundry_app/presentation/splash_screen/splash_screen.dart';
import 'package:laundry_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:laundry_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:laundry_app/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:laundry_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:laundry_app/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:laundry_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:laundry_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:laundry_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:laundry_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:laundry_app/presentation/verification_one_screen/verification_one_screen.dart';
import 'package:laundry_app/presentation/verification_one_screen/binding/verification_one_binding.dart';
import 'package:laundry_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:laundry_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:laundry_app/presentation/password_reset_successs_pop_up_screen/password_reset_successs_pop_up_screen.dart';
import 'package:laundry_app/presentation/password_reset_successs_pop_up_screen/binding/password_reset_successs_pop_up_binding.dart';
import 'package:laundry_app/presentation/city_selction_screen/city_selction_screen.dart';
import 'package:laundry_app/presentation/city_selction_screen/binding/city_selction_binding.dart';
import 'package:laundry_app/presentation/home_page_container1_screen/home_page_container1_screen.dart';
import 'package:laundry_app/presentation/home_page_container1_screen/binding/home_page_container1_binding.dart';
import 'package:laundry_app/presentation/washing_screen/washing_screen.dart';
import 'package:laundry_app/presentation/washing_screen/binding/washing_binding.dart';
import 'package:laundry_app/presentation/iron_screen/iron_screen.dart';
import 'package:laundry_app/presentation/iron_screen/binding/iron_binding.dart';
import 'package:laundry_app/presentation/dry_clean_screen/dry_clean_screen.dart';
import 'package:laundry_app/presentation/dry_clean_screen/binding/dry_clean_binding.dart';
import 'package:laundry_app/presentation/cloth_fold_screen/cloth_fold_screen.dart';
import 'package:laundry_app/presentation/cloth_fold_screen/binding/cloth_fold_binding.dart';
import 'package:laundry_app/presentation/schedule_a_wash_screen/schedule_a_wash_screen.dart';
import 'package:laundry_app/presentation/schedule_a_wash_screen/binding/schedule_a_wash_binding.dart';
import 'package:laundry_app/presentation/address_screen/address_screen.dart';
import 'package:laundry_app/presentation/address_screen/binding/address_binding.dart';
import 'package:laundry_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:laundry_app/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:laundry_app/presentation/order_succesful_screen/order_succesful_screen.dart';
import 'package:laundry_app/presentation/order_succesful_screen/binding/order_succesful_binding.dart';
import 'package:laundry_app/presentation/order_details_screen/order_details_screen.dart';
import 'package:laundry_app/presentation/order_details_screen/binding/order_details_binding.dart';
import 'package:laundry_app/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:laundry_app/presentation/profile_details_screen/binding/profile_details_binding.dart';
import 'package:laundry_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:laundry_app/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:laundry_app/presentation/add_a_card_screen/add_a_card_screen.dart';
import 'package:laundry_app/presentation/add_a_card_screen/binding/add_a_card_binding.dart';
import 'package:laundry_app/presentation/add_a_card_one_screen/add_a_card_one_screen.dart';
import 'package:laundry_app/presentation/add_a_card_one_screen/binding/add_a_card_one_binding.dart';
import 'package:laundry_app/presentation/my_cards_screen/my_cards_screen.dart';
import 'package:laundry_app/presentation/my_cards_screen/binding/my_cards_binding.dart';
import 'package:laundry_app/presentation/my_address_screen/my_address_screen.dart';
import 'package:laundry_app/presentation/my_address_screen/binding/my_address_binding.dart';
import 'package:laundry_app/presentation/delete_address_screen/delete_address_screen.dart';
import 'package:laundry_app/presentation/delete_address_screen/binding/delete_address_binding.dart';
import 'package:laundry_app/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:laundry_app/presentation/add_new_address_screen/binding/add_new_address_binding.dart';
import 'package:laundry_app/presentation/notification_screen/notification_screen.dart';
import 'package:laundry_app/presentation/notification_screen/binding/notification_binding.dart';
import 'package:laundry_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:laundry_app/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:laundry_app/presentation/log_out_screen/log_out_screen.dart';
import 'package:laundry_app/presentation/log_out_screen/binding/log_out_binding.dart';
import 'package:laundry_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:laundry_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String logInScreen = '/log_in_screen';

  static const String logInWithErrorScreen = '/log_in_with_error_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String verificationScreen = '/verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String passwordResetSuccesssPopUpScreen =
      '/password_reset_successs_pop_up_screen';

  static const String citySelctionScreen = '/city_selction_screen';

  static const String homePageContainerPage = '/home_page_container_page';

  static const String homePageContainer1Screen = '/home_page_container1_screen';

  static const String washingScreen = '/washing_screen';

  static const String ironScreen = '/iron_screen';

  static const String dryCleanScreen = '/dry_clean_screen';

  static const String clothFoldScreen = '/cloth_fold_screen';

  static const String basketPage = '/basket_page';

  static const String scheduleAWashScreen = '/schedule_a_wash_screen';

  static const String addressScreen = '/address_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String orderSuccesfulScreen = '/order_succesful_screen';

  static const String myOrderPage = '/my_order_page';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String profilePage = '/profile_page';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String addACardScreen = '/add_a_card_screen';

  static const String addACardOneScreen = '/add_a_card_one_screen';

  static const String myCardsScreen = '/my_cards_screen';

  static const String myAddressScreen = '/my_address_screen';

  static const String addressOptionScreen = '/address_option_screen';

  static const String editAddressScreen = '/edit_address_screen';

  static const String deleteAddressScreen = '/delete_address_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String notificationScreen = '/notification_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String logOutScreen = '/log_out_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationOneScreen,
      page: () => VerificationOneScreen(),
      bindings: [
        VerificationOneBinding(),
      ],
    ),

    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: passwordResetSuccesssPopUpScreen,
      page: () => PasswordResetSuccesssPopUpScreen(),
      bindings: [
        PasswordResetSuccesssPopUpBinding(),
      ],
    ),
    GetPage(
      name: citySelctionScreen,
      page: () => CitySelctionScreen(),
      bindings: [
        CitySelctionBinding(),
      ],
    ),
    GetPage(
      name: homePageContainer1Screen,
      page: () => HomePageContainer1Screen(),
      bindings: [
        HomePageContainer1Binding(),
      ],
    ),
    GetPage(
      name: washingScreen,
      page: () => WashingScreen(),
      bindings: [
        WashingBinding(),
      ],
    ),
    GetPage(
      name: ironScreen,
      page: () => IronScreen(),
      bindings: [
        IronBinding(),
      ],
    ),
    GetPage(
      name: dryCleanScreen,
      page: () => DryCleanScreen(),
      bindings: [
        DryCleanBinding(),
      ],
    ),
    GetPage(
      name: clothFoldScreen,
      page: () => ClothFoldScreen(),
      bindings: [
        ClothFoldBinding(),
      ],
    ),
    GetPage(
      name: scheduleAWashScreen,
      page: () => ScheduleAWashScreen(),
      bindings: [
        ScheduleAWashBinding(),
      ],
    ),
    GetPage(
      name: addressScreen,
      page: () => AddressScreen(),
      bindings: [
        AddressBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: orderSuccesfulScreen,
      page: () => OrderSuccesfulScreen(),
      bindings: [
        OrderSuccesfulBinding(),
      ],
    ),
    GetPage(
      name: orderDetailsScreen,
      page: () => OrderDetailsScreen(),
      bindings: [
        OrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: profileDetailsScreen,
      page: () => ProfileDetailsScreen(),
      bindings: [
        ProfileDetailsBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: addACardScreen,
      page: () => AddACardScreen(),
      bindings: [
        AddACardBinding(),
      ],
    ),
    GetPage(
      name: addACardOneScreen,
      page: () => AddACardOneScreen(),
      bindings: [
        AddACardOneBinding(),
      ],
    ),
    GetPage(
      name: myCardsScreen,
      page: () => MyCardsScreen(),
      bindings: [
        MyCardsBinding(),
      ],
    ),
    GetPage(
      name: myAddressScreen,
      page: () => MyAddressScreen(),
      bindings: [
        MyAddressBinding(),
      ],
    ),
    // GetPage(
    //   name: addressOptionScreen,
    //   page: () => AddressOptionScreen(),
    //   bindings: [
    //     AddressOptionBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: editAddressScreen,
    //   page: () => EditAddressScreen(),
    //   bindings: [
    //     EditAddressBinding(),
    //   ],
    // ),
    GetPage(
      name: deleteAddressScreen,
      page: () => DeleteAddressScreen(),
      bindings: [
        DeleteAddressBinding(),
      ],
    ),
    GetPage(
      name: addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      bindings: [
        AddNewAddressBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: logOutScreen,
      page: () => LogOutScreen(),
      bindings: [
        LogOutBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
