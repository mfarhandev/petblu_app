import 'package:flutter/material.dart';
import 'package:petblu_app/view/onboarding/onboarding1_screen.dart';
import 'package:petblu_app/view/onboarding/onboarding2_screen.dart';
import 'package:petblu_app/view/onboarding/onboarding3_screen.dart';

class OnboardingScreen extends StatefulWidget {
  final int? index;
  const OnboardingScreen({super.key, this.index});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: widget.index ?? 0,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: [
              Onboarding1Screen(),
              Onboarding2Screen(),
              Onboarding3Screen(),
            ],
          ),
        ],
      ),
    );
  }
}