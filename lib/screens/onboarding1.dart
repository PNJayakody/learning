import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Image.asset(
                'assets/images/onboarding1.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 25),

            CircleAvatar(
              radius: 35,
              backgroundColor: const Color(0xFFEAE4FF),
              child: Icon(
                Icons.assignment_outlined,
                size: 35,
                color: Color(0xFF5B3DF5),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'ORGANIZE\nYOUR STUDY',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildDot(true), _buildDot(false), _buildDot(false)],
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 30),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: const Color(0xFF5B3DF5),
                  child: IconButton(
                    onPressed: () {},

                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),

      width: 12,
      height: 12,

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        color: isActive ? const Color(0xFF5B3DF5) : const Color(0xFFD7CCFF),
      ),
    );
  }
}
