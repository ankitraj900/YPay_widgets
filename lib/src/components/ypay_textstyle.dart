import 'package:flutter/material.dart';

abstract class YpayColors {
  static const Color primary = Color(0xFF480052);
  static const Color black = Color(0xFF000000);
  static const Color primaryList = Color(0x1A480052);
  static const Color white = Colors.white;
  static const Color black87 = Color(0xFF292929);
  static const Color grey = Color(0xFF8A8A8A);
  static const Color darkGrey = Color(0xFF434343);
  static const Color green = Color(0xFF09B285);
  static const Color error = Colors.red;
}

abstract class YpayTextStyle {
  // Display Text Styles (used for main headers and large titles)
  static TextStyle get Displaylarge => TextStyle(
        fontFamily: 'InterRegular28',
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: YpayColors.primary,
        decoration: TextDecoration.none,
      );

  // header
  static TextStyle get header => TextStyle(
        fontFamily: 'InterRegular28',
        fontSize: 24,
        letterSpacing: 0.32,
        fontWeight: FontWeight.normal,
        color: YpayColors.primary,
        decoration: TextDecoration.none,
      );

  // header2
  static TextStyle get header2 => TextStyle(
        fontFamily: 'InterRegular28',
        fontSize: 24,
        letterSpacing: 0.32,
        fontWeight: FontWeight.normal,
        color: YpayColors.black,
        decoration: TextDecoration.none,
      );

  // subHeaderStyle
  static TextStyle get subh1 => TextStyle(
        fontSize: 16,
        letterSpacing: 0.32,
        fontFamily: 'InterRegular28',
        fontWeight: FontWeight.normal,
        color: YpayColors.black,
        decoration: TextDecoration.none,
      );

  static TextStyle get subh2 => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: YpayColors.black87,
        decoration: TextDecoration.none,
      );

  static TextStyle get subh3 => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: YpayColors.primary,
        decoration: TextDecoration.none,
      );

  static TextStyle get subh4 => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: YpayColors.grey,
        decoration: TextDecoration.none,
      );

  static TextStyle get inputText => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: YpayColors.black87,
        decoration: TextDecoration.none,
      );

  // subheadline Text Styles used in button
  static TextStyle get ButtonText => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: YpayColors.white,
        decoration: TextDecoration.none,
      );

  // Smallheadline Text styles used in caption
  static TextStyle get caption => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: YpayColors.primaryList,
        decoration: TextDecoration.none,
      );

  // smallheadline Text Styles used in Transfer Summary
  static TextStyle get headlineSmall => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: YpayColors.darkGrey,
        decoration: TextDecoration.none,
      );

  static TextStyle get HeadlineSmall2 => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: YpayColors.darkGrey,
        decoration: TextDecoration.none,
      );

  // Headline Caption of Transfer Date & Time
  static TextStyle get HeadlineTransfer => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: YpayColors.grey,
        decoration: TextDecoration.none,
      );
        // Headline Caption of Transfer Complete
  static TextStyle get HeadlineCompleted => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: YpayColors.green,
        decoration: TextDecoration.none,
      );
      //Small Line CAPTION (OUR RATES=>"UPDATE ")
  static TextStyle get SmallLineCaption => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: YpayColors.black,
        decoration: TextDecoration.none,
      );
      //Text Style for OTP Text 
      static TextStyle get otpText => TextStyle(
        fontFamily: 'InterRegular28',
        letterSpacing: 0.32,
        fontSize: 29.54,
        fontWeight: FontWeight.normal,
        color: YpayColors.black87,
        decoration: TextDecoration.none,
      );
}
