import 'package:flutter/material.dart';
import '../Utility/ResponsiveUtils.dart';


class Constants {
  // Text Strings
  static const String appTitle = "Employee List";
  // static const String lastOpenedLabel = "Last Opened:";
  static const String errorMessage = "Failed to load data.";
  static const String next = "Next";
  static const String previous = "Previous";

  // Colors
  static const Color cardBackground = Color(0xFFE3F2FD);
  static const Color primaryColor = Colors.blue;
  static const Color textGray = Colors.black54;
  static const Color dividerGray = Color(0xFFE0E0E0);
  static const Color infoTileBackground = Color(0xFFF5F5F5);
  static const Color infoTileBorder = Color(0xFFE0E0E0);
  static const Color iconColor = Colors.blue;
  static const Color summaryCardColor = Color(0xFF7E57C2);

  // Padding & Margin (Responsive)
  static EdgeInsets get cardPadding => ResponsiveUtils.paddingSymmetric(horizontalPercent: 0.03, verticalPercent: 0.015);
  static EdgeInsets get sectionPadding => ResponsiveUtils.paddingSymmetric(horizontalPercent: 0.04, verticalPercent: 0.02);
  static EdgeInsets get paginationPadding => ResponsiveUtils.paddingSymmetric(verticalPercent: 0.015);
  static EdgeInsets get sectionMargin => ResponsiveUtils.marginSymmetric(verticalPercent: 0.02);

  static EdgeInsets get infoTileMargin => ResponsiveUtils.paddingSymmetric(verticalPercent: 0.007);
  static EdgeInsets get infoTilePadding => ResponsiveUtils.paddingAll(0.03);

  static EdgeInsets get cardMargin => ResponsiveUtils.paddingAll(0.03);
  static EdgeInsets get cardPaddings => ResponsiveUtils.paddingAll(0.04);

  // Sizes & Radius (Responsive)
  static double get infoTileBorderRadius => ResponsiveUtils.radius(0.03);
  static double get cardBorderRadius => ResponsiveUtils.radius(0.04);
  static double get dividerHeight => ResponsiveUtils.height(0.03);
  static double get rowSpacing => ResponsiveUtils.height(0.01);
  static double get avatarSmall => ResponsiveUtils.radius(0.07);
  static double get avatarRadius => ResponsiveUtils.radius(0.15);

  // Text Styles (Responsive)
  static TextStyle get cardTitleStyle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.045),
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle get cardSubtitleStyle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.035),
    color: Colors.white70,
  );

  static TextStyle get rowTitleStyle => TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: ResponsiveUtils.fontSize(0.034),
  );

  static TextStyle get rowValueStyle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.034),
    color: Colors.white,
  );

  static TextStyle get nameStyle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.06),
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static TextStyle get companyStyle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.04),
    color: Colors.black54,
    fontStyle: FontStyle.italic,
  );

  static TextStyle get titleStyle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.055),
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static TextStyle get subtitleStyle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.04),
    color: textGray,
  );

  static TextStyle get sectionTitle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.04),
    fontWeight: FontWeight.bold,
  );

  static TextStyle get infoTitle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.032),
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );

  static TextStyle get infoValue => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.038),
    fontWeight: FontWeight.w500,
  );

  static TextStyle get infoTileTitle => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.033),
    fontWeight: FontWeight.w600,
    color: Colors.black54,
  );

  static TextStyle get infoTileValue => TextStyle(
    fontSize: ResponsiveUtils.fontSize(0.038),
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  );
}
