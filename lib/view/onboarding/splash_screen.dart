import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petblu_app/utils/custom_color.dart';
import 'package:petblu_app/view/onboarding/onboarding_screen.dart';
import 'package:petblu_app/widgets/ElevatedButtonWidget.dart';
import 'package:petblu_app/widgets/app_navigator.dart';
import 'package:petblu_app/widgets/text_widget.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Video Player
    _controller = VideoPlayerController.asset('assets/videos/splash.mp4')
      ..initialize().then((_) {
        setState(() {});
      })
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          // VideoPlayer(_controller),
          Container(
            height: double.infinity,
            child: _controller.value.isInitialized
                ? FittedBox(
                    fit: BoxFit.fitHeight,
                    child: SizedBox(
                      width: _controller.value.size.width,
                      height: _controller.value.size.height,
                      child: VideoPlayer(_controller),
                    ),
                  )
                : Center(child: CircularProgressIndicator()),
          ),

          // Color Filter
          Container(
            height: double.infinity,
            color: splashcolor,
          ),

          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100,),

            // Logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/s1.png', width: 150, ),
              ],
            ),
            SizedBox(height: 20,),

            // Image
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/s2.png',width: 200, ),
              ],
            ),
            SizedBox(height: 10,),

            // shop, share and care
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.normal("Shop, share and care",fontFamily: GoogleFonts.inter().fontFamily,fontsize: 20,color: Colors.white,fontWeight: FontWeight.bold),
              ],
            ),
              SizedBox(height: 100,),

              // Get Started Button
              ElevatedButtonWidget(
                buttonWidth: 250,
                buttonHeight: 50,
                buttonborderRadius: 10,
                buttonBackgroundColor: btncolor,
                onPressed: () {
                  AppNavigator.goToPageWithReplacementAll(context: context, screen: OnboardingScreen());
                },
                child: AppText.normal("Get Started",color: Colors.white,fontWeight: FontWeight.bold,fontsize: 18,letterSpacing: 1.0),
              ),
          ],
          ),

        ],
      ),
    );
  }
}
