import 'package:flutter/material.dart';
import 'package:sample_pixelfield/commons/app_assets.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';
import 'package:sample_pixelfield/utils/app_svg.dart';

class CollectionHeader extends StatelessWidget {
  const CollectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'My collection',
          style: AppTypography.headlineLarge.copyWith(
            color: AppColors.textWhite,
          ),
        ),
        AppSvg(
          AppAssets.icons.notifications,
        ),
      ],
    );
  }
}
