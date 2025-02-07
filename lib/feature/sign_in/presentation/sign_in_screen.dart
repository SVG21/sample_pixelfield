import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_pixelfield/commons/app_assets.dart';
import 'package:sample_pixelfield/routes/app_router.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';
import 'package:sample_pixelfield/ui_kit/app_button.dart';
import 'package:sample_pixelfield/ui_kit/app_text_form_field.dart';
import 'package:sample_pixelfield/utils/app_svg.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColorDarkBlue,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          // Dismiss keyboard on tap
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32),

                  // Back Button
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: AppSvg(AppAssets.icons.arrowBack),
                  ),

                  SizedBox(height: 48),

                  // Sign In Text
                  Text('Sign in', style: AppTypography.headlineLarge),

                  SizedBox(height: 32),

                  // Email Input Field
                  AppTextFormField(
                    label: 'Email',
                  ),

                  SizedBox(height: 24),

                  // Password Input Field
                  AppTextFormField(
                    label: 'Password',
                    isPassword: true,
                  ),

                  SizedBox(height: 56),

                  // Continue Button
                  _buildContinueButton(context),

                  SizedBox(height: 32),

                  // Recover Password Section
                  _buildRecoverPassword(),

                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Continue Button
  Widget _buildContinueButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AppButton.primary(
        text: 'Continue',
        onPressed: () => context.router.push(HomeRoute()),
      ),
    );
  }

  // Recover Password Section
  Widget _buildRecoverPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Can't sign in?",
          style: AppTypography.bodyLarge.copyWith(
            color: AppColors.textGrey,
          ),
        ),
        SizedBox(width: 8),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Recover password',
            style: AppTypography.buttonLarge.copyWith(
              color: AppColors.textYellow,
            ),
          ),
        ),
      ],
    );
  }
}
