import 'package:flutter/material.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;

  const AppButton._({
    required this.text,
    required this.onPressed,
    this.icon,
    Key? key,
  }) : super(key: key);

  /// Primary button with text only
  factory AppButton.primary({
    required String text,
    required VoidCallback? onPressed,
  }) {
    return AppButton._(
      text: text,
      onPressed: onPressed,
    );
  }

  /// Primary button with text and an optional icon
  factory AppButton.primaryWithIcon({
    required String text,
    required VoidCallback? onPressed,
    required Widget icon,
  }) {
    return AppButton._(
      text: text,
      onPressed: onPressed,
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonYellow,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 8),
          ],
          Text(
            text,
            style: AppTypography.buttonLarge,
          ),
        ],
      ),
    );
  }
}
