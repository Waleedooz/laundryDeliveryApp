import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laundry_app/core/utils/size_utils.dart';

import '../phone_field/intl_phone_field.dart';
import '../phone_field/phone_number.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#f8f8f8');

  static Color teal10001 = fromHex('#bbd9e3');

  static Color lightBlue100 = fromHex('#abd6ee');

  static Color deepOrange10001 = fromHex('#f6ceb7');

  static Color orange10001 = fromHex('#f2e4bb');
  static Color primaryLight = fromHex('#EFF6FE');

  static Color teal100 = fromHex('#b3e5e1');

  static Color red10001 = fromHex('#fdd6d3');

  static Color greenA700 = fromHex('#04b155');

  static Color cyan5001 = fromHex('#cafbf2');

  static Color indigo5001 = fromHex('#e1ddff');

  static Color indigo5002 = fromHex('#dee4ff');

  static Color blueGray900 = fromHex('#292d32');
  static Color primaryColor = fromHex('#5B83FB');

  static Color pink100 = fromHex('#ecc8ce');

  static Color deepOrange100 = fromHex('#f4d1b2');

  static Color gray600 = fromHex('#808080');

  static Color deepPurple5001 = fromHex('#e9e6ff');

  static Color gray400 = fromHex('#c4c4c4');

  static Color pink50 = fromHex('#ffd8e0');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color amber700 = fromHex('#e1a200');

  static Color black9000f = fromHex('#0f000000');

  static Color lightGreen10001 = fromHex('#ebdfcd');

  static Color gray200 = fromHex('#f0f0f0');

  static Color blue50 = fromHex('#d9edfd');

  static Color lime100 = fromHex('#fae7c9');

  static Color deepPurple50 = fromHex('#f0eefc');

  static Color cyan50 = fromHex('#cefff9');

  static Color blue100 = fromHex('#cbd6fb');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray8004c = fromHex('#4c3c3c43');

  static Color deepOrange50 = fromHex('#fbeadf');

  static Color red700 = fromHex('#d83636');

  static Color lightGreen100 = fromHex('#d2f0d2');

  static Color indigoA200 = fromHex('#5a83fa');

  static Color gray50 = fromHex('#f8f8f9');

  static Color red50 = fromHex('#fbeeee');

  static Color red100 = fromHex('#ffd7df');
  static Color red = fromHex('#D93636');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color blue5002 = fromHex('#dae9ff');

  static Color blue5001 = fromHex('#d2e7fb');

  static Color teal5001 = fromHex('#d0e8f5');

  static Color teal5002 = fromHex('#d2e4f2');

  static Color blue5003 = fromHex('#ddeaff');

  static Color teal5003 = fromHex('#d5f3e8');

  static Color lime10001 = fromHex('#f4e2c9');

  static Color blueGray400 = fromHex('#888888');

  static Color indigo50 = fromHex('#dedff8');

  static Color lightBlue50 = fromHex('#d1f2ff');

  static Color teal50 = fromHex('#cdeaf3');

  static Color gray300 = fromHex('#e6e6e6');
  static Color otpBorder = fromHex('#C5C5C5');

  static Color orange100 = fromHex('#f4e3b2');

  static Color gray100 = fromHex('#eff5fe');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
closeApp() {
  Future.delayed(const Duration(milliseconds: 1000), () {
    SystemNavigator.pop();
  });
}

Widget phone_number_field(controller,FutureOr<String?> Function(PhoneNumber?)? validator){
  return  IntlPhoneField(
    controller: controller,
    disableLengthCheck: true,
    showCountryFlag: false,
    flagsButtonMargin: EdgeInsets.only(
        left: 16, top: 12, bottom: 12, right: 14),
    style: TextStyle(
      color: ColorConstant.black900,
      fontSize: getFontSize(
        16,
      ),
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w400,
    ),
    dropdownTextStyle: TextStyle(
      color: ColorConstant.black900,
      fontSize: getFontSize(
        16,
      ),
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w400,
    ),
    cursorColor: ColorConstant.primaryColor,
    dropdownIconPosition: IconPosition.trailing,
    dropdownDecoration: BoxDecoration(
      // border: Border(
      //     right: BorderSide(
      //         color: ColorConstant.gray300))
    ),
    dropdownIcon: Icon(
      Icons.keyboard_arrow_down_outlined,
      color: ColorConstant.black900,
    ),
    validator: validator,

    //     (p0) {
    //   if (p0 == null || p0.number.isEmpty) {
    //     return "Enter valid number";
    //   }
    //   return null;
    // },
    decoration: InputDecoration(
      floatingLabelStyle: TextStyle(
        color: ColorConstant.black900,
        fontSize: getFontSize(
          13,
        ),
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: ColorConstant.gray600,
        fontSize: getFontSize(
          16,
        ),
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
      ),
      contentPadding: EdgeInsets.zero,
      // labelStyle: TextStyle(
      //   color: ColorConstant.black900,
      //   fontSize: getFontSize(
      //     13,
      //   ),
      //   fontFamily: 'Outfit',
      //   fontWeight: FontWeight.w400,
      // ),
      labelText: "Phone number",
      // label: Text(
      //   "Phone number",
      //   style: TextStyle(
      //     color: ColorConstant.black900,
      //     fontSize: getFontSize(
      //       16,
      //     ),
      //     fontFamily: 'SF Pro Display',
      //     fontWeight: FontWeight.w400,
      //   ),
      // ),
      // label: Align(alignment: Alignment.topLeft,child: Text("Phone number",textAlign: TextAlign.left,)),
      hintText: "Phone number",
      hintStyle: TextStyle(
        color: ColorConstant.gray600,
        fontSize: getFontSize(
          16,
        ),
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w400,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(getHorizontalSize(8))),
        borderSide: BorderSide(
          color: ColorConstant.red,
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(getHorizontalSize(8))),
        borderSide: BorderSide(
          color: ColorConstant.primaryColor,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(getHorizontalSize(8))),
        borderSide: BorderSide(
          color: ColorConstant.otpBorder,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(getHorizontalSize(8))),
        borderSide: BorderSide(
          color: ColorConstant.primaryColor,
          width: 1,
        ),
      ),

      border: OutlineInputBorder(
        borderSide: BorderSide(),
      ),
    ),
    initialCountryCode: 'IN',
    onChanged: (phone) {
      print(phone.completeNumber);
    },
  );
}
