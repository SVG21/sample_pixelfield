import 'package:flutter/material.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';

const _fontLato = 'Lato';
const _fontEBGaramond = 'EBGaramond';

class AppTypography {
  static TextStyle bodySmall = TextStyle(
    color: AppColors.textWhite,
    fontFamily: _fontLato,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyMediumBold = TextStyle(
    color: AppColors.textWhite,
    fontFamily: _fontLato,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bodyLarge = TextStyle(
    color: AppColors.textWhite,
    fontFamily: _fontLato,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle buttonLarge = TextStyle(
    color: AppColors.textDark,
    fontFamily: _fontEBGaramond,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle headlineLarge = TextStyle(
    color: AppColors.textWhite,
    fontFamily: _fontEBGaramond,
    fontSize: 32,
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleLarge = TextStyle(
    color: AppColors.textWhite,
    fontFamily: _fontEBGaramond,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
}
