import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pixelfield/commons/app_assets.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_bloc.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_event.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';
import 'package:sample_pixelfield/utils/app_svg.dart';

class CollectionDetailsDropDown extends StatelessWidget {
  const CollectionDetailsDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedValue = "Genuine Bottle (Unopened)";

    final List<String> items = [
      "Genuine Bottle (Unopened)",
      "Genuine Bottle (Opened)",
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      color: AppColors.backGroundColorDark,
      child: DropdownButtonHideUnderline(
        child: Row(
          children: [
            Expanded(
              child: DropdownButton<String>(
                value: selectedValue,
                dropdownColor: AppColors.backGroundColorDark,
                icon: SizedBox.shrink(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    selectedValue = newValue;
                    context
                        .read<CollectionDetailsBloc>()
                        .add(FetchCollectionDetails(bottleType: newValue));
                  }
                },
                items: items.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Row(
                        children: [
                          Image.asset(
                            AppAssets.images.genuine,
                            height: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            value,
                            style: AppTypography.bodyMediumBold,
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            AppSvg(AppAssets.icons.dropDown),
          ],
        ),
      ),
    );
  }
}
