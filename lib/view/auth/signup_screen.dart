import 'package:flutter/material.dart';
import 'package:petblu_app/view/auth/login_screen.dart';

import '../../utils/custom_color.dart';
import '../../utils/global_variables.dart';
import '../../widgets/ElevatedButtonWidget.dart';
import '../../widgets/PwdTextFormFieldWidget.dart';
import '../../widgets/TextFormFieldWidget.dart';
import '../../widgets/app_navigator.dart';
import '../../widgets/text_widget.dart';
import '../home/menu_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [

                // background image
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 350,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/log1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
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

                // content
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),

                      // logo
                      Image.asset(
                        'assets/images/log3.png',
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),

                      // sign up text
                      AppText.normal(
                        "Sign up",
                        fontsize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 20),

                      // form fields
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.normal(
                                  "First Name",
                                  fontsize: 13,
                                ),
                                SizedBox(height: 10),
                                TextFormFieldWgt(
                                  hintText: "",
                                  height: 50,
                                  keyboardType: TextInputType.text,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.normal(
                                  "Last Name",
                                  fontsize: 13,
                                ),
                                SizedBox(height: 10),
                                TextFormFieldWgt(
                                  hintText: "",
                                  height: 50,
                                  keyboardType: TextInputType.text,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // email address
                      AppText.normal(
                        "Email address",
                        fontsize: 13,
                      ),
                      SizedBox(height: 10),
                      TextFormFieldWgt(
                        hintText: "email@.com",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20),

                      // password
                      AppText.normal(
                        "Password",
                        fontsize: 13,
                      ),
                      SizedBox(height: 10),
                      PwdTextFormFieldWidget(),
                      SizedBox(height: 20),

                      // confirm password
                      AppText.normal(
                        "Confirm Password",
                        fontsize: 13,
                      ),
                      SizedBox(height: 10),
                      PwdTextFormFieldWidget(),
                      SizedBox(height: 20),

                      // country and phone number
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.normal(
                                  "Country",
                                  fontsize: 13,
                                ),
                                SizedBox(height: 10),
                                TextFormFieldWgt(
                                  hintText: "",
                                  height: 50,
                                  keyboardType: TextInputType.text,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.normal(
                                  "Phone Number",
                                  fontsize: 13,
                                ),
                                SizedBox(height: 10),
                                TextFormFieldWgt(
                                  hintText: "",
                                  height: 50,
                                  keyboardType: TextInputType.phone,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // birthday
                      AppText.normal(
                        "Birthday",
                        fontsize: 13,
                      ),
                      SizedBox(height: 10),
                      TextFormFieldWgt(
                        hintText: "Jan 31 2000",
                        keyboardType: TextInputType.datetime,
                      ),
                      SizedBox(height: 30),

                      // sign up button
                      Center(
                        child: ElevatedButtonWidget(
                          buttonWidth: 300,
                          buttonHeight: 50,
                          buttonborderRadius: 10,
                          buttonBackgroundColor: btncolor,
                          onPressed: () {
                            AppNavigator.goToPageWithReplacementAll(context: context, screen: MenuScreen());
                          },
                          child: AppText.normal(
                            "Sign up",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontsize: 18,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),

                      // already have an account
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText.normal(
                              "Already have an account? ",
                              fontsize: 13,
                              color: Colors.grey,
                            ),
                            GestureDetector(
                              onTap: () {
                                AppNavigator.goToPage(context: context, screen: LoginScreen());
                              },
                              child: AppText.normal(
                                "Log in",
                                fontsize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
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