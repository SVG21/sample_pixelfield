import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_pixelfield/feature/collection/presentation/widgets/collection_body.dart';
import 'package:sample_pixelfield/feature/collection/presentation/widgets/collection_header.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';

@RoutePage()
class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColorDarkBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 48),
            CollectionHeader(),
            const SizedBox(height: 32),
            CollectionBody(),
          ],
        ),
      ),
    );
  }
}
