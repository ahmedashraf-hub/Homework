import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session14_grocery/constants/assets.dart';
import 'package:session14_grocery/styles/app_colors.dart';
import 'package:session14_grocery/styles/app_text_styles.dart';
import 'package:session14_grocery/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingView()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.imagesSplashImage),
          SizedBox(width: double.infinity),
          Text(
            'Fresh Fruits',
            style: AppTextStyles.bold38.copyWith(color: Color(0XFFFFFFFF)),
          ),
        ],
      ),
    );
  }
}
