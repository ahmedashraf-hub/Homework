import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding0 extends StatelessWidget {
  const Onboarding0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEC54B),
      body: Center(child: SvgPicture.asset('assets/images/freshFruits.svg')),
    );
  }
}
