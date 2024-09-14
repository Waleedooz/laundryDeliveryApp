import 'package:flutter/material.dart';
import 'package:laundry_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case ButtonPadding.PaddingT16:
        return getPadding(
          top: 16,
          right: 16,
          bottom: 16,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case ButtonPadding.PaddingT2:
        return getPadding(
          top: 2,
          bottom: 2,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case ButtonVariant.OutlineAmber700:
      case ButtonVariant.OutlineRed700:
      case ButtonVariant.OutlineGreenA700:
      case ButtonVariant.OutlineIndigoA200:
        return null;
      default:
        return ColorConstant.indigoA200;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineAmber700:
        return BorderSide(
          color: ColorConstant.amber700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineRed700:
        return BorderSide(
          color: ColorConstant.red700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGreenA700:
        return BorderSide(
          color: ColorConstant.greenA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigoA200:
        return BorderSide(
          color: ColorConstant.indigoA200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.White:
      case ButtonVariant.FillGray100:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.White:
        return ColorConstant.black9000f;
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.FillGray100:
      case ButtonVariant.OutlineAmber700:
      case ButtonVariant.OutlineRed700:
      case ButtonVariant.OutlineGreenA700:
      case ButtonVariant.OutlineIndigoA200:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.ManropeSemiBold17:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OutfitBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.SFProDisplayRegular14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.SFProDisplayBold18white:
        return TextStyle(
          color: ColorConstant.primaryColor,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.SFProDisplaySemibold14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.SFProDisplaySemibold14Amber700:
        return TextStyle(
          color: ColorConstant.amber700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.SFProDisplaySemibold14Red700:
        return TextStyle(
          color: ColorConstant.red700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.SFProDisplaySemibold14GreenA700:
        return TextStyle(
          color: ColorConstant.greenA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.SFProDisplayBold18IndigoA200:
        return TextStyle(
          color: ColorConstant.indigoA200,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
  RoundedBorder16,
}
enum ButtonPadding {
  PaddingAll16,
  PaddingAll12,
  PaddingT16,
  PaddingAll8,
  PaddingT2,
}
enum ButtonVariant {
  FillIndigoA200,
  White,
  FillGray100,
  OutlineAmber700,
  OutlineRed700,
  OutlineGreenA700,
  OutlineIndigoA200,
}
enum ButtonFontStyle {
  SFProDisplayBold18,
  SFProDisplayBold18white,
  ManropeSemiBold17,
  OutfitBold18,
  SFProDisplayRegular14,
  SFProDisplaySemibold14,
  SFProDisplaySemibold14Amber700,
  SFProDisplaySemibold14Red700,
  SFProDisplaySemibold14GreenA700,
  SFProDisplayBold18IndigoA200,
}
