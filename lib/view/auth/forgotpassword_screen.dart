import 'package:flutter/material.dart';
import 'package:petblu_app/utils/custom_color.dart';
import 'package:petblu_app/utils/global_variables.dart';
import 'package:petblu_app/view/auth/newpassword_screen.dart';
import 'package:petblu_app/view/home/menu_screen.dart';
import 'package:petblu_app/widgets/ElevatedButtonWidget.dart';
import 'package:petblu_app/widgets/PwdTextFormFieldWidget.dart';
import 'package:petblu_app/widgets/TextFormFieldWidget.dart';
import 'package:petblu_app/widgets/app_navigator.dart';

import '../../widgets/text_widget.dart';
import 'signup_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                // form
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50,),

                      // back button
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child:  Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.grey.shade200)
                              ),
                              child: Center(child: Icon(Icons.arrow_back_ios)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),

                      // logo
                      Image.asset(
                        'assets/images/log3.png',
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),

                      // title
                      AppText.normal(
                        "Password Recovery",
                        fontsize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 5,),

                      // description
                      AppText.normal('Don’t worry! It happens. Please enter the email associated with your account.',maxline: 2),
                      SizedBox(height: 30),

                      // email
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
                      SizedBox(height: 30),

                      // send code button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButtonWidget(
                            buttonWidth: 300,
                            buttonHeight: 50,
                            buttonborderRadius: 10,
                            buttonBackgroundColor: btncolor,
                            onPressed: () {
                              AppNavigator.goToPage(context: context, screen: NewpasswordScreen());
                            },
                            child: AppText.normal(
                              "Send Code",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontsize: 18,
                              letterSpacing: 1.0,
                            ),
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