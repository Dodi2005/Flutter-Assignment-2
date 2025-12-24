import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/resources/app_colors.dart';
import 'package:flutter_application_1/core/resources/app_textStyles.dart';
import 'package:flutter_application_1/features/splash/splash_screen.dart';
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(scaffoldBackgroundColor: AppColors.whitecolor, fontFamily: AppTextstyles.fontFamily), home: SplashScreen());
  }
}