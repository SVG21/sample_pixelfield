import 'package:flutter/material.dart';
import 'package:sample_pixelfield/feature/collection/data/collection_model.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';

class CollectionItem extends StatelessWidget {
  final CollectionModel model;

  const CollectionItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 16),
        Center(
          child: Image.asset(model.image),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                model.title,
                style: AppTypography.titleLarge.copyWith(
                  color: AppColors.textWhite,
                ),
              ),
              Text(
                model.subTitle,
                style: AppTypography.titleLarge.copyWith(
                  color: AppColors.textWhite,
                ),
              ),
              Text(
                model.itemCount,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textGrey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
