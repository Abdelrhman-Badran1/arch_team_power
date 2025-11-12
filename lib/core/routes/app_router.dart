import 'package:arch_team_power/features/auth_screen/presentation/login/pages/login_screen.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/forgot_password_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/new_password_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/otp_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/verify_email_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/view/register_screen.dart';
import 'package:arch_team_power/features/splash_screen/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/layout/presentation/layout_page.dart';
import '../../features/onboarding_screen/presentation/pages/intro_home_screen.dart';

class AppRouter {
  static const String kSplashScreen = '/';
  static const kIntroHomeScreen = "/intro_home_screen";
  static const klayout = "/layout";
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kNewPasswordView = '/newPasswordView';
  static const kOtpView = '/otpView';
  static const kVerifyEmailView = '/verifyEmailView';
  static const kRegisterScreen = '/kregisterscreen';
  static const kLoginScreen = '/kloginscreen';

  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashScreen, builder: (context, state) => const SplashScreen()),
      GoRoute(path: kIntroHomeScreen, builder: (context, state) => IntroHomeScreen()),
      GoRoute(path: klayout, builder: (context, state) => LayoutPage()),
      GoRoute(path: kForgotPasswordView, builder: (context, state) => const ForgotPasswordView()),
      GoRoute(path: kVerifyEmailView, builder: (context, state) => const VerifyEmailView()),
      GoRoute(path: kOtpView, builder: (context, state) => const OtpView()),
      GoRoute(path: kNewPasswordView, builder: (context, state) => const NewPasswordView()),
      GoRoute(path: kRegisterScreen, builder: (context, state) => const RegisterScreen()),
      GoRoute(path: kLoginScreen, builder: (context, state) => const LoginScreen()),
    ],
  );
}
