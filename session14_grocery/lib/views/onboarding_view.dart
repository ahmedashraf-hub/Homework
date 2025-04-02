import 'package:flutter/material.dart';
import 'package:session14_grocery/models/onboarding_item_model.dart';
import 'package:session14_grocery/styles/app_colors.dart';
import 'package:session14_grocery/widgets/custom_button.dart';
import 'package:session14_grocery/widgets/dots_indicator.dart';
import 'package:session14_grocery/widgets/onboarding_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late OnboardingItemModel currentItem;
  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    currentItem = getOnboardingItems()[currentIndex];
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_sharp, color: AppColors.primary),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 1),
          Expanded(
            flex: 2,
            child: PageView.builder(
              onPageChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
              controller: pageController,
              itemBuilder: (context, index) {
                return OnboardingItem(item: getOnboardingItems()[index]);
              },
            ),
          ),
          const SizedBox(height: 24),
          DotsIndicator(currentIndix: currentIndex),
          const SizedBox(height: 41),

          currentIndex < getOnboardingItems().length - 1
              ? CustomButton(
                text: 'Next',
                onPressed: () {
                  if (currentIndex < getOnboardingItems().length) {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
              )
              : Column(
                children: [
                  CustomButton(text: 'CREATE AN ACCOUNT', onPressed: () {}),
                  CustomButton(text: 'LOGIN', onPressed: () {}),
                ],
              ),

          const SizedBox(height: 45),
        ],
      ),
    );
  }
}
