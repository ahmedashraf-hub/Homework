import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session14_grocery/models/onboarding_item_model.dart';
import 'package:session14_grocery/styles/app_text_styles.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.item});

  final OnboardingItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SvgPicture.asset(item.image),
        SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  45.0),
          child: Column(
            children: [
              Text(item.title, style: AppTextStyles.bold24),
              SizedBox(height: 34),
              Text(
                item.subTitle,
                style: AppTextStyles.bold18,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
