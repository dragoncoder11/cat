import 'package:catapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome To Home',style: Styles.style24w300.copyWith(fontWeight: FontWeight.w500),),
          const SizedBox(height: 70,),
          Image.asset('assets/welcome.png'),
           const SizedBox(height: 54,),
          Text('Currently The Next Part of Home Activity & Fragementation is under development. The upcoming Part 2 is coming Soon........',
          style: Styles.style14w300,)
        ],
      ),
    );
  }
}