import 'package:flutter/material.dart';
import 'package:petblu_app/utils/custom_color.dart';
import 'package:petblu_app/utils/global_variables.dart';
import 'package:petblu_app/view/home/menu_screen.dart';
import 'package:petblu_app/widgets/ElevatedButtonWidget.dart';
import 'package:petblu_app/widgets/PwdTextFormFieldWidget.dart';
import 'package:petblu_app/widgets/TextFormFieldWidget.dart';
import 'package:petblu_app/widgets/app_navigator.dart';
import 'package:petblu_app/widgets/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/log1.png',
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 2),
                      ],
                    ),
                    SizedBox(height: h(context) * 0.28),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        'assets/images/log2.png',
                        height: 200,
                        color: Colors.blue.shade100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Image.asset(
                        'assets/images/log3.png',
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      AppText.normal(
                        "Log in",
                        fontsize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 40),
                      AppText.normal(
                        "Email address",
                        fontsize: 13,
                        // fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 10),
                      TextFormFieldWgt(
                        hintText: "email@.com",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20),
                      AppText.normal(
                        "Password",
                        fontsize: 13,
                        // fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 10),
                      PwdTextFormFieldWidget(),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppText.normal(
                            "Forgot password?",
                            fontsize: 13,
                            // fontWeight: FontWeight.bold,
                          ),
                      ],),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButtonWidget(
                            buttonWidth: 300,
                            buttonHeight: 50,
                            buttonborderRadius: 10,
                            buttonBackgroundColor: btncolor,
                            onPressed: () {
                              AppNavigator.goToPageWithReplacementAll(context: context, screen: MenuScreen());
                            },
                            child: AppText.normal(
                              "Log in",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontsize: 18,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText.normal(
                            "Don't have an account? ",
                            fontsize: 13,
                            color: Colors.grey
                            // fontWeight: FontWeight.bold,
                          ),
                          AppText.normal(
                            "Sign up",
                            fontsize: 13,
                             fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
