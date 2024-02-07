import 'package:catapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
     Image.asset('assets/splash.png',height: 200,width: 153,),
     Row(mainAxisAlignment: MainAxisAlignment.center,children: [
      Text('Explora',style:Styles.style24Bold ,),
     const SizedBox(width: 5,),
      Image.asset('assets/f.jpg')
     ],)
      ],
    );
  }
}