import 'package:flutter/material.dart';
import 'package:sample_pixelfield/commons/app_assets.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';
import 'package:sample_pixelfield/utils/app_svg.dart';

class CollectionDetailsHeader extends StatelessWidget {
  const CollectionDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Genesis Collection',
          style: AppTypography.bodySmall,
        ),
        IconButton.filled(
          style: IconButton.styleFrom(
            backgroundColor: AppColors.backGroundColorDark,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: AppSvg(AppAssets.icons.cross),
        ),
      ],
    );
  }
}
