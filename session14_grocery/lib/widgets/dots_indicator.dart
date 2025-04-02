import 'package:flutter/material.dart';
import 'package:session14_grocery/styles/app_colors.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndix});
  final int currentIndix;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: Container(
            width: 23,
            height: 6,
            decoration: ShapeDecoration(
              color:
                  currentIndix == index ? AppColors.green : AppColors.lightGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        );
      }),
    );
  }
}
