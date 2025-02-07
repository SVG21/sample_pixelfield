import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_bloc.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_state.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';

class CollectionDetailsItemHeader extends StatelessWidget {
  final String selectedTab;
  final Function(String) onTabSelected;

  const CollectionDetailsItemHeader({
    super.key,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectionDetailsBloc, CollectionDetailsState>(
      builder: (context, state) {
        if (state is CollectionDetailsLoading) {
          return _buildLoading();
        } else if (state is CollectionDetailsLoaded) {
          final bottle = state.bottles.first;
          return Column(
            children: [
              _buildBottleImage(bottle.bottleImage),
              SizedBox(height: 24),
              _buildBottleDetailsContainer(bottle),
            ],
          );
        } else if (state is CollectionDetailsError) {
          return _buildError(state.message);
        }
        return SizedBox.shrink();
      },
    );
  }

  // Builds a loading indicator
  Widget _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  // Builds an error message display
  Widget _buildError(String message) {
    return Center(
      child: Text(message, style: TextStyle(color: Colors.red)),
    );
  }

  // Builds the bottle image
  Widget _buildBottleImage(String imagePath) {
    return Center(
      child: Image.asset(imagePath),
    );
  }

  // Builds the container that wraps all bottle details
  Widget _buildBottleDetailsContainer(dynamic bottle) {
    return Container(
      padding: EdgeInsets.all(16),
      color: AppColors.itemBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBottleId(bottle.bottleID),
          SizedBox(height: 8),
          _buildBottleNameAndAge(bottle.bottleName, bottle.bottleAge),
          _buildBottleNumber(bottle.bottleNumber),
          SizedBox(height: 16),
          _buildTabBar(),
        ],
      ),
    );
  }

  // Builds the bottle ID
  Widget _buildBottleId(String bottleId) {
    return Text(
      "Bottle $bottleId",
      style: AppTypography.bodySmall.copyWith(
        color: AppColors.textGrey,
      ),
    );
  }

  // Builds the bottle name and age
  Widget _buildBottleNameAndAge(String bottleName, String bottleAge) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$bottleName ",
            style: AppTypography.headlineLarge,
          ),
          TextSpan(
            text: bottleAge,
            style: AppTypography.headlineLarge.copyWith(
              color: AppColors.textYellow,
            ),
          ),
        ],
      ),
    );
  }

  // Builds the bottle number
  Widget _buildBottleNumber(String bottleNumber) {
    return Text(
      bottleNumber,
      style: AppTypography.headlineLarge,
    );
  }

  // Builds the tab bar with buttons
  Widget _buildTabBar() {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.buttonDark,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildTabButton(
              "Details",
              isActive: selectedTab == "Details",
              onPressed: () => onTabSelected("Details"),
            ),
          ),
          Expanded(
            child: _buildTabButton(
              "Tasting notes",
              isActive: selectedTab == "Tasting notes",
              onPressed: () => onTabSelected("Tasting notes"),
            ),
          ),
          Expanded(
            child: _buildTabButton(
              "History",
              isActive: selectedTab == "History",
              onPressed: () => onTabSelected("History"),
            ),
          ),
        ],
      ),
    );
  }

  // Builds individual tab buttons
  Widget _buildTabButton(
      String text, {
        required bool isActive,
        required VoidCallback onPressed,
      }) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: isActive ? AppColors.buttonYellow : Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Text(text, style: AppTypography.bodySmall),
    );
  }
}
