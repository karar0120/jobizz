import 'package:flutter/material.dart';
import 'package:jobizz/feature/onboarding/widget/app_bar.dart';
import 'package:jobizz/feature/onboarding/widget/onboarding_content.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GeneralAppBar(),
      body: OnBoardingContent(),
    );
  }
}
