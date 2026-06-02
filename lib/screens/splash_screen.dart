import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';
import 'onboarding1_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,

              child: Image.asset(
                'assets/images/splash.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Expanded(
              flex: 4,

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),

                child: Column(
                  children: [
                    const SizedBox(height: 25),

                    Text('SMART STUDY', style: AppTextStyles.heading),

                    const SizedBox(height: 15),

                    Text(
                      'A smart study planner for university students. Organize and recover your academic path.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.description,
                    ),

                    const Spacer(),

                    SizedBox(
                      width: double.infinity,
                      height: 60,

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,

                            MaterialPageRoute(
                              builder: (context) => const Onboarding1(),
                            ),
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),

                        child: const Text(
                          'Get Started',

                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
