import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/onboarding/widgets/onboarding_item.dart';

class OnboardingScreen extends StatelessWidget
{
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(body: OnboardingItem(),);
  }
}