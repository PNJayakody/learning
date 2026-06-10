import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';
import 'login_screen.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top Image
            Expanded(
              flex: 6,
              child: Image.asset(
                'assets/images/onboarding3.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // Bottom Section
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [
                    // Icon Circle
                    Container(
                      width: 80,
                      height: 80,

                      decoration: BoxDecoration(
                        color: AppColors.lightPurple,
                        shape: BoxShape.circle,
                      ),

                      child: Icon(
                        Icons.trending_up,
                        color: AppColors.primary,
                        size: 40,
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Title
                    Text(
                      'TRACK\nYOUR PROGRESS',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.onboardingTitle,
                    ),

                    const Spacer(),

                    // Bottom Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        // Indicators
                        Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),

                            const SizedBox(width: 8),

                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                                shape: BoxShape.circle,
                              ),
                            ),

                            const SizedBox(width: 8),

                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,

                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          // Arrow Button
                          child: Container(
                            width: 60,
                            height: 60,

                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),

                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
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
