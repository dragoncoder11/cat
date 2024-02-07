import 'package:catapp/features/onboarding/data/presentation/views/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
static String id='on boarding';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: OnBoardingBody(),
    );
  }
}