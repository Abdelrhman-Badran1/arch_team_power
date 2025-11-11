import 'package:arch_team_power/features/auth_screen/presentation/view/forgot_password_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/new_password_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/otp_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/verify_email_view.dart';
import 'package:arch_team_power/features/layout/layout_page.dart';
import 'package:arch_team_power/features/onboarding_screen/pages/intro_home_screen.dart';
import 'package:arch_team_power/features/splash_screen/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kIntroHomeScreen = "intro_home_screen";
  static const klayout = "layout";
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kNewPasswordView = '/newPasswordView';
  static const kOtpView = '/otpView';
  static const kVerifyEmailView = '/verifyEmailView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(
        path: kIntroHomeScreen,
        builder: (context, state) => IntroHomeScreen(),
      ),
      GoRoute(path: klayout, builder: (context, state) => LayoutPage()),
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kVerifyEmailView,
        builder: (context, state) => const VerifyEmailView(),
      ),
      GoRoute(path: kOtpView, builder: (context, state) => const OtpView()),
      GoRoute(
        path: kNewPasswordView,
        builder: (context, state) => const NewPasswordView(),
      ),
    ],
  );
}
