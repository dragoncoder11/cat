import 'package:catapp/core/utils/constants.dart';
import 'package:catapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.ontap});
 final  title;
 final Function()ontap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: Styles.style20,),
             const SizedBox(width: 8,),
            const Icon(Icons.arrow_forward_ios,color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}