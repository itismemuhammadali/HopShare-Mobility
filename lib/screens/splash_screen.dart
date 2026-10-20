import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            // Logo container
            Center(
              child: Container(
                width: 280,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: AppColors.glowGradient,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.neonTeal.withValues(alpha: 0.3),
                      blurRadius: 30,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: AppColors.background,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.asset(
                      'assets/images/skippy_logo.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return _buildPlaceholderLogo();
                      },
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(flex: 1),
            // Tagline
            const Text(
              'BE YOUR OWN BOSS\nFOR REAL!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: AppColors.neonTeal,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 16),
            // Subtitle
            const Text(
              'Drive. Earn. Make a Difference.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textPrimary,
                letterSpacing: 0.5,
              ),
            ),
            const Spacer(flex: 2),
            // Continue button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to next screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonCyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'CONTINUE',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.background,
                            ),
                          ),
                          Text(
                            'Start Earning Now',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.background.withValues(alpha: 0.7),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      const Icon(
                        Icons.keyboard_double_arrow_right,
                        color: AppColors.background,
                        size: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Bottom tagline
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shield_outlined,
                  color: AppColors.neonTeal.withValues(alpha: 0.8),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Safe Rides. Smart Drivers.',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.neonTeal.withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholderLogo() {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.glowGradient,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Running person icon (top)
          const Positioned(
            top: 30,
            child: Icon(
              Icons.directions_run,
              size: 60,
              color: AppColors.textPrimary,
            ),
          ),
          // Car icon (bottom)
          const Positioned(
            bottom: 50,
            child: Icon(
              Icons.directions_car,
              size: 50,
              color: AppColors.textPrimary,
            ),
          ),
          // Skippy text
          const Positioned(
            bottom: 20,
            child: Text(
              'Skippy',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
