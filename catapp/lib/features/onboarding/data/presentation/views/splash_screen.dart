import 'package:catapp/core/utils/constants.dart';
import 'package:catapp/features/onboarding/data/presentation/views/on_boarding.dart';
import 'package:catapp/features/onboarding/data/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
static String id='on boarding';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
        return const OnBoarding();
      }));
    });
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body:  SplashViewBody(),
    );
  }
}