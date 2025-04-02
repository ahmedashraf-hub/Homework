import 'package:flutter/material.dart';
import 'package:session14_grocery/styles/app_colors.dart';
import 'package:session14_grocery/styles/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        fixedSize: const Size(318, 60),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      ),
      child: Text(text, style: AppTextStyles.bold16),
    );
  }
}
