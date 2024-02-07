import 'package:catapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.image, required this.title, required this.desc});
  final String image;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.only(top: 140,left: 20,right: 20),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 230,
            width: double.infinity,
            child: Image.asset(image),
          ),
         const SizedBox(height: 80,),
         SizedBox(width: 280,child: Text(title,style: Styles.style36Bold,)),
         Text(desc,style: Styles.style24w300,)
        ],
      ),
    );
  }
}