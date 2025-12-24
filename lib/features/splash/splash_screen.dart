import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/onboarding/onboarding_screen.dart';
class SplashScreen extends StatelessWidget
{
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context)
  {
    _init(context);
    return Scaffold(body: Center(child: Image.asset('assets/images/2.png')));
  }
  void _init(BuildContext context)
  {
    Timer(Duration(seconds: 0),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });
  }
}