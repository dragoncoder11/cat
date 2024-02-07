import 'package:catapp/features/authentication/data/presentation/views/widgets/login_page.dart';
import 'package:catapp/features/authentication/data/presentation/views/widgets/sign_up.dart';
import 'package:catapp/features/home/data/presentation/views/home_page.dart';
import 'package:catapp/features/onboarding/data/presentation/views/on_boarding.dart';
import 'package:catapp/features/onboarding/data/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
      routes: {
     OnBoarding.id:(context) =>const OnBoarding(),
     SignUp.id:(context) => SignUp(),
      LoginPage.id:(context) => LoginPage(),
      SplashScreen.id:(context) =>const SplashScreen(),
      HomePage.id:(context) =>const HomePage(),
      },
      initialRoute:SplashScreen.id,
    );
  }
}
