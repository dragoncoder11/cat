import 'package:catapp/core/utils/constants.dart';
import 'package:catapp/features/authentication/data/presentation/views/widgets/login_page.dart';
import 'package:catapp/features/onboarding/data/presentation/views/widgets/on_boarding_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
    final controller=PageController();

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  
  Widget build(BuildContext context) {
    return  Stack(
      children:[ PageView(
        controller:controller ,
        children:const [
       OnBoardingItem(image: 'assets/page1.png', title: 'Explore the world easily', desc: 'To your desire'),
       OnBoardingItem(image: 'assets/page2.png', title: 'Reach the unknown spot', desc: 'To your destination'),
       OnBoardingItem(image: 'assets/page3.png', title: 'Make connects with explora', desc: 'To your dream trip'),
        
        ],
      ),
         Positioned(right: 28,bottom: 50,child: GestureDetector(
          onTap: () {
            controller.nextPage(duration: const Duration(microseconds: 200), curve: Curves.easeIn);
            if(controller.page==2){
              Navigator.of(context).pushReplacementNamed(LoginPage.id);
            }
          },
          child: Container(
            height: 50,
            width: 50,
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              color: kTextColor,  
            ),
            child:const Center(child: Icon(Icons.arrow_forward_ios,color: Colors.white,),),
          ),
        )),
         Positioned(left: 28,bottom: 70,child:
         SmoothPageIndicator(controller: controller, count: 3,
         effect:const WormEffect(
          dotHeight: 7,
          spacing: 5,
          activeDotColor: kTextColor,
          dotColor: kPrimaryColor
         ),),
         
         ),
    ]);

  }
}