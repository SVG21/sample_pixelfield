import 'package:flutter/material.dart';
import 'package:sample_pixelfield/commons/app_assets.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/widgets/collection_details_drop_down.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/widgets/collection_details_header.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/widgets/collection_details_item_header.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/widgets/collection_details_tab_info.dart';
import 'package:sample_pixelfield/ui_kit/app_button.dart';
import 'package:sample_pixelfield/utils/app_svg.dart';

class CollectionDetailsBody extends StatefulWidget {
  const CollectionDetailsBody({super.key});

  @override
  State<CollectionDetailsBody> createState() => CollectionDetailsBodyState();
}

class CollectionDetailsBodyState extends State<CollectionDetailsBody> {
  String selectedTab = "Details";

  void _onTabSelected(String tab) {
    setState(() {
      selectedTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48),
              CollectionDetailsHeader(),
              SizedBox(height: 16),
              CollectionDetailsDropDown(),
              SizedBox(height: 24),
              CollectionDetailsItemHeader(
                selectedTab: selectedTab,
                onTabSelected: _onTabSelected, // Pass the callback
              ),
            ],
          ),
        ),
        CollectionDetailsTabInfo(
          selectedTab: selectedTab,
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: AppButton.primaryWithIcon(
            text: 'Add to my collection',
            onPressed: () {},
            icon: AppSvg(
              AppAssets.icons.plus,
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
