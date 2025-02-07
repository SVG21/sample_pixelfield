import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_pixelfield/routes/app_router.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';
import 'package:sample_pixelfield/ui_kit/app_button.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.itemBackgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _welcomeHeaderText(),
            SizedBox(
              height: 8,
            ),
            _welcomeSubHeaderText(),
            SizedBox(
              height: 24,
            ),
            SizedBox(
                width: double.infinity,
                child:
                    AppButton.primary(text: 'Scan bottle', onPressed: () {})),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: AppTypography.bodyLarge.copyWith(
                    color: AppColors.textGrey,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                InkWell(
                  onTap: () => context.router.push(SignInRoute()),
                  child: Text(
                    'Sign in first',
                    style: AppTypography.buttonLarge.copyWith(
                      color: AppColors.textYellow,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _welcomeHeaderText() {
    return Text(
      'Welcome!',
      style: AppTypography.headlineLarge,
    );
  }

  Widget _welcomeSubHeaderText() {
    return Text(
      'Text text text',
      style: AppTypography.bodyLarge,
    );
  }
}
