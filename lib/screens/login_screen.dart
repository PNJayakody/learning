import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Image
              Image.asset(
                'assets/images/login.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sparkle Icon
                    const Text('✨', style: TextStyle(fontSize: 30)),

                    const SizedBox(height: 10),

                    // Title
                    const Text(
                      'Start Your',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const Text(
                      'Study Journey',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5B3DF5),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Stay organized and achieve your academic goals smarter',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Email Field
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',

                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 18,
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),

                          borderSide: const BorderSide(
                            color: Color(0xFF5B3DF5),
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),

                          borderSide: const BorderSide(
                            color: Color(0xFF5B3DF5),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Password Field
                    TextField(
                      obscureText: true,

                      decoration: InputDecoration(
                        hintText: 'Password',

                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 18,
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),

                          borderSide: const BorderSide(
                            color: Color(0xFF5B3DF5),
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),

                          borderSide: const BorderSide(
                            color: Color(0xFF5B3DF5),
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,

                      child: TextButton(
                        onPressed: () {},

                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Color(0xFF5B3DF5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 60,

                      child: ElevatedButton(
                        onPressed: () {},

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5B3DF5),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),

                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Icon(Icons.login, color: Colors.white),

                            SizedBox(width: 10),

                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Test')));
  }
}
