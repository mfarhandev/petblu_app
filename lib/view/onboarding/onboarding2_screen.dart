


import 'package:flutter/material.dart';
import 'package:petblu_app/utils/custom_color.dart';
import 'package:petblu_app/utils/global_variables.dart';
import 'package:petblu_app/view/onboarding/onboarding_screen.dart';
import 'package:petblu_app/widgets/ElevatedButtonWidget.dart';
import 'package:petblu_app/widgets/app_navigator.dart';
import 'package:petblu_app/widgets/text_widget.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Parrot image
        Image.asset(
          "assets/images/on2.png",
          fit: BoxFit.cover,
        ),
        // Texts
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:  EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Spoil Your Pet
                AppText.normal("Spoil Your Pet",
                  textAlign: TextAlign.left,
                  fontsize: 28,
                  maxline: 10,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),

                // description
                AppText.normal("Discover top-quality pet products handpicked for your furry friend's happiness and health. From toys to food, we've got you covered.",
                  textAlign: TextAlign.justify,
                  fontsize: 16,
                  maxline: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 30),

                // Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle,color: Colors.blue.shade100,size: 14,),
                    Icon(Icons.circle,color: Colors.blue,size: 14,),
                    Icon(Icons.circle,color: Colors.blue.shade100,size: 14,),

                  ],
                ),
                SizedBox(height: 40),

                // Next Button
                ElevatedButtonWidget(
                  buttonWidth: 250,
                  buttonHeight: 50,
                  buttonborderRadius: 10,
                  buttonBackgroundColor: btncolor,
                  onPressed: () {
                    AppNavigator.goToPage(context: context, screen: OnboardingScreen(index: 2,));
                  },
                  child: AppText.normal("Next",color: Colors.white,fontWeight: FontWeight.bold,fontsize: 18,letterSpacing: 1.0),
                ),
                SizedBox(height: 40),




              ],
            ),
          ),
        ),
      ],
    );
  }
}







