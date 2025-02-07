import 'package:flutter/material.dart';
import 'package:sample_pixelfield/commons/app_assets.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';

class AppBackground extends StatelessWidget{
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: AppColors.backGroundColorDark,
        child: Image.asset(
          AppAssets.images.imageBackground,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}