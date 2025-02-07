import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_bloc.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_state.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';

class CollectionDetailsTabInfo extends StatelessWidget{
  final String selectedTab;
  const CollectionDetailsTabInfo({super.key,required this.selectedTab,});

  @override
  Widget build(BuildContext context) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        color: AppColors.itemBackgroundColor,
        child: BlocBuilder<CollectionDetailsBloc, CollectionDetailsState>(
          builder: (context, state) {
            if (state is CollectionDetailsLoaded) {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: _getTabContent(state),
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    ),
  );
  }

  Widget _getTabContent(CollectionDetailsLoaded state) {
    final bottle = state.bottles.first;
    if (selectedTab == "Details") {
      return Column(
        children: [
          _detailRow("Distillery", bottle.distilleryName),
          _detailRow("Region", bottle.regionName),
          _detailRow("Country", bottle.countryName),
          _detailRow("Type", bottle.type),
          _detailRow("Age statement", bottle.ageStatement),
          _detailRow("Filled", bottle.filled),
          _detailRow("Bottled", bottle.bottled),
          _detailRow("Cask number", bottle.caskNumber),
          _detailRow("ABV", bottle.abc),
          _detailRow("Size", bottle.size),
          _detailRow("Finish", bottle.finish),
        ],
      );
    } else {
      return Center(
        child: Text(
          selectedTab == "Tasting notes"
              ? "Tasting Notes Content"
              : "History Content",
          style: AppTypography.bodyLarge.copyWith(color: Colors.white),
        ),
      );
    }
  }

  Widget _detailRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTypography.bodyLarge),
          Text(value,
              style: AppTypography.bodyLarge.copyWith(color: AppColors.textGrey)),
        ],
      ),
    );
  }
}