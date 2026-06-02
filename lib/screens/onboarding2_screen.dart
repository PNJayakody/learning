import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';
import 'onboarding3_screen.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,

              child: Image.asset(
                'assets/images/onboarding2.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Expanded(
              flex: 4,

              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,

                      decoration: BoxDecoration(
                        color: AppColors.lightPurple,
                        shape: BoxShape.circle,
                      ),

                      child: Icon(
                        Icons.calendar_month_outlined,
                        color: AppColors.primary,
                        size: 40,
                      ),
                    ),

                    const SizedBox(height: 25),

                    Text(
                      'PLAN\nYOUR SCHEDULE',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.onboardingTitle,
                    ),

                    const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        /// Indicators
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
                                color: AppColors.primary,
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
                          ],
                        ),

                        /// Next Button
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,

                              MaterialPageRoute(
                                builder: (context) => Onboarding3(),
                              ),
                            );
                          },

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
