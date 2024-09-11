import 'package:flutter/material.dart';
import 'package:petblu_app/utils/global_variables.dart';
import 'package:petblu_app/view/auth/login_screen.dart';
import 'package:petblu_app/widgets/ElevatedButtonWidget.dart';
import 'package:petblu_app/widgets/app_navigator.dart';
import 'package:petblu_app/widgets/text_widget.dart';

import '../../utils/custom_color.dart';

class Onboarding3Screen extends StatefulWidget {
  const Onboarding3Screen({super.key});

  @override
  State<Onboarding3Screen> createState() => _Onboarding3ScreenState();
}

class _Onboarding3ScreenState extends State<Onboarding3Screen> {
  final ValueNotifier<bool> _switchNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _switchNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/on3.png",
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.normal(
                  "Thrive & Celebrate",
                  textAlign: TextAlign.left,
                  fontsize: 28,
                  maxline: 10,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),
                AppText.normal(
                  "Track your pet's health, get expert advice and connect with a supportive community of pet parents who understand the joys (and messes!) of pet ownership.",
                  textAlign: TextAlign.justify,
                  fontsize: 16,
                  maxline: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, color: Colors.blue.shade100, size: 14),
                    Icon(Icons.circle, color: Colors.blue.shade100, size: 14),
                    Icon(Icons.circle, color: Colors.blue, size: 14),
                  ],
                ),
                SizedBox(height: 35),
                ElevatedButtonWidget(
                  buttonWidth: 250,
                  buttonHeight: 50,
                  buttonborderRadius: 10,
                  buttonBackgroundColor: btncolor,
                  onPressed: () {
                    AppNavigator.goToPageWithReplacementAll(context: context, screen: LoginScreen());
                  },
                  child: AppText.normal(
                    "Start",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontsize: 18,
                    letterSpacing: 1.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.normal("Enable push notifications", color: Colors.black, fontsize: 14,),
                    ValueListenableBuilder<bool>(
                      valueListenable: _switchNotifier,
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: 0.75, // Adjust the scale value to make the switch smaller
                          child: Switch(
                            value: value,
                            onChanged: (newValue) {
                              _switchNotifier.value = newValue;
                            },
                            activeColor: Colors.blue, // Set the active color to blue
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}