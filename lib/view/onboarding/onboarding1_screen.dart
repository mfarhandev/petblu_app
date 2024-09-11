


import 'package:flutter/material.dart';
import 'package:petblu_app/utils/custom_color.dart';
import 'package:petblu_app/utils/global_variables.dart';
import 'package:petblu_app/view/auth/login_screen.dart';
import 'package:petblu_app/view/onboarding/onboarding_screen.dart';
import 'package:petblu_app/widgets/ElevatedButtonWidget.dart';
import 'package:petblu_app/widgets/app_navigator.dart';
import 'package:petblu_app/widgets/text_widget.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Dog Image
        Image.asset(
          "assets/images/on1.png",
          fit: BoxFit.cover,
        ),
        // Join the Pet Crowd
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:  EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Join the Pet Crowd
                AppText.normal("Join the Pet Crowd",
                  textAlign: TextAlign.left,
                  fontsize: 28,
                  maxline: 10,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),

                // description
                AppText.normal("Join our pet community to share tips, ask questions and learn from others.",
                  textAlign: TextAlign.justify,
                  fontsize: 16,
                  maxline: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 75),

                // Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Icon(Icons.circle,color: Colors.blue,size: 14,),
                   Icon(Icons.circle,color: Colors.blue.shade100,size: 14,),
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
                   AppNavigator.goToPage(context: context, screen: OnboardingScreen(index: 1,));
                  },
                  child: AppText.normal("Next",color: Colors.white,fontWeight: FontWeight.bold,fontsize: 18,letterSpacing: 1.0),
                ),
                SizedBox(height: 10),

                // Skip for now
                GestureDetector(
                  onTap: (){
                    AppNavigator.goToPageWithReplacementAll(context: context, screen: LoginScreen());
                    },
                  child:  AppText.normal("Skip for now",
                    textAlign: TextAlign.left,
                    fontsize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),

                SizedBox(height: 10),




              ],
            ),
          ),
        ),
      ],
    );
  }
}







