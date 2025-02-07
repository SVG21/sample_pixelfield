import 'package:flutter/material.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';
import 'package:sample_pixelfield/theme/app_typography.dart';

class AppTextFormField extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType keyboardType;

  const AppTextFormField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.controller,
    this.keyboardType = TextInputType.text,
  });

  @override
  AppTextFormFieldState createState() => AppTextFormFieldState();
}

class AppTextFormFieldState extends State<AppTextFormField> {
  bool _isObscured = true; // Controls password visibility

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _isObscured : false,
      keyboardType: widget.keyboardType,
      style: AppTypography.bodyLarge.copyWith(color: Colors.white),
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: AppTypography.bodySmall.copyWith(color: AppColors.textYellow),
        suffixIcon: widget.isPassword
            ? GestureDetector(
          onTap: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
          child: Icon(
            _isObscured ? Icons.visibility_off : Icons.visibility,
            color: AppColors.commonYellow,
          ),
        )
            : null,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.commonYellow),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.commonYellow),
        ),
      ),
    );
  }
}
