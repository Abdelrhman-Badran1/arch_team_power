import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/routes/app_routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/background_pattern_painter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // 🎞️ حركة الدوران البطيئة للخلفية
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);

    // ✨ حركة الـ Fade-in عند البداية
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..forward();

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );

    // ⏳ الانتقال بعد 3 ثوانٍ إلى شاشة الـ Onboarding
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kIntroHomeScreen);
    });
  }

  @override
  void dispose() {
    _rotationController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7B48D),
      body: SafeArea(
        child: Stack(
          children: [
            // ✨ خلفية متحركة + Fade-in (مربعات هندسية فقط)
            AnimatedBuilder(
              animation: Listenable.merge([
                _rotationController,
                _fadeAnimation,
              ]),
              builder: (context, child) {
                return Opacity(
                  opacity: _fadeAnimation.value,
                  child: CustomPaint(
                    size: Size.infinite,
                    painter: BackgroundPatternPainter(
                      rotation: _rotationController.value * 0.4,
                      offsetShift: _rotationController.value * 20,
                    ),
                  ),
                );
              },
            ),
            SvgPicture.asset("assets/splash_asstes/frame 1.svg"),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ZoomIn(
                    duration: const Duration(seconds: 2),
                    child: SvgPicture.asset(
                      'assets/icons/app_icon.svg', // ضع صورتك هنا يدوياً
                      width: 120.w,
                      height: 120.w,
                      // إذا أردت تلوين الأيقونة لتتلاءم مع اللون، تأكد أن الصورة PNG بها قناة ألفا
                      color: const Color(0xFF3C492F),
                      colorBlendMode: BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  FadeInDown(
                    duration: const Duration(seconds: 2),
                    delay: const Duration(milliseconds: 500),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        children: const [
                          TextSpan(
                            text: 'ARCH',
                            style: TextStyle(color: Color(0xFF3C492F)),
                          ),
                          TextSpan(
                            text: 'TECH',
                            style: TextStyle(color: Colors.grey),
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
    );
  }
}
