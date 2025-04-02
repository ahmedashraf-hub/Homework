class OnboardingItemModel {
  final String image;
  final String title;
  final String subTitle;

  OnboardingItemModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnboardingItemModel> getOnboardingItems() {
  return [
    OnboardingItemModel(
      image: 'assets/images/onboarding_item1.svg',
      title: 'Welcome to Fresh Fruits',
      subTitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
    ),

    OnboardingItemModel(
      image: 'assets/images/onboarding_item1.svg',
      title: 'We provide best quality Fruits to your family',
      subTitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
    ),
    OnboardingItemModel(
      image: 'assets/images/onboarding_item3.svg',
      title: 'Fast and responsibily delivery by our courir ',
      subTitle:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
    ),
  ];
}
