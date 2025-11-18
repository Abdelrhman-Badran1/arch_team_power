import 'package:arch_team_power/features/Notifications/presentation/screens/notifications_page.dart';
import 'package:arch_team_power/features/Search_Fliter/presentation/screens/search_fillter.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/forgot_password_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/login_screen.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/new_password_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/otp_view.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/register_screen.dart';
import 'package:arch_team_power/features/auth_screen/presentation/screens/verify_email_view.dart';
import 'package:arch_team_power/features/choseAppLang/presentation/screens/chose_app_lang_screen.dart';
import 'package:arch_team_power/features/comments/presentation/comments_page.dart';
import 'package:arch_team_power/features/details_screen/presentation/screens/details_screen.dart';
import 'package:arch_team_power/features/layout/presentation/pages/profile/screens/settings_screen.dart';
import 'package:arch_team_power/features/layout/presentation/pages/profile/screens/subscription_screen.dart';
import 'package:arch_team_power/features/notes/presentation/screens/notes_screen.dart';
import 'package:arch_team_power/features/onboarding_screen/presentation/screens/intro_home_screen.dart';
import 'package:arch_team_power/features/option/presentation/screens/option_screen.dart';
import 'package:arch_team_power/features/splash_screen/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/layout/presentation/layout_page.dart';
import '../../features/layout/presentation/pages/profile/screens/digital_library_screen.dart';
import '../../features/layout/presentation/pages/profile/screens/events_screen.dart';
import '../../features/layout/presentation/pages/profile/screens/faq_screen.dart';
import '../../features/layout/presentation/pages/profile/screens/vip_hall_screen.dart';

class AppRouter {
  static const String kSplashScreen = '/';
  static const kIntroHomeScreen = "/intro_home_screen";
  static const kLoginScreen = '/kloginscreen';
  static const kRegisterScreen = '/kregisterscreen';
  static const kForgotPasswordView = '/forgotPasswordView';
  static const kNewPasswordView = '/newPasswordView';
  static const kOtpView = '/otpView';
  static const kVerifyEmailView = '/verifyEmailView';
  static const kLangSelector = '/LangSelector';
  static const kOptionScreen = '/OptionScreen';
  static const kHomeScreen = "/home_screen";
  static const kFilterUI = '/FilterUI';
  static const kNotificationsPage = '/NotificationsPage';
  static const kDetailsScreen = '/DetailsScreen';
  static const kSettingsScreen = '/settingsscreen';
  static const kFaqScreen = "/faq_screen";
  static const kDigitalLibraryScreen = "/digital_library_screen";
  static const kEventsScreen = "/events_screen";
  static const kVipHallScreen = "/vip_hall_screen";
  static const kSubscriptionScreen = "/subscriptionscreen";
  static const kComments = '/comments';
  static const kLibraryScreen = '/LibraryScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kIntroHomeScreen,
        builder: (context, state) => IntroHomeScreen(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: kRegisterScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: kLangSelector,
        builder: (context, state) => const ChoseAppLangScreen(),
      ),
      GoRoute(
        path: kOptionScreen,
        builder: (context, state) => const OptionScreen(),
      ),
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
      GoRoute(path: kHomeScreen, builder: (context, state) => LayoutPage()),
      GoRoute(path: kFilterUI, builder: (context, state) => FilterUI()),
      GoRoute(
        path: kNotificationsPage,
        builder: (context, state) => NotificationsPage(),
      ),
      GoRoute(
        path: AppRouter.kSettingsScreen,
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: kSubscriptionScreen,
        builder: (context, state) => SubscriptionScreen(),
      ),
      GoRoute(path: kFaqScreen, builder: (context, state) => const FaqScreen()),

      GoRoute(
        path: kDigitalLibraryScreen,
        builder: (context, state) => const DigitalLibraryScreen(),
      ),
      GoRoute(
        path: kDetailsScreen,
        builder: (context, state) => DetailsScreen(),
      ),
      GoRoute(
        path: kEventsScreen,
        builder: (context, state) => const EventsScreen(),
      ),

      GoRoute(
        path: kVipHallScreen,
        builder: (context, state) => const VipHallScreen(),
      ),

      GoRoute(path: kComments, builder: (context, state) => CommentsPage()),
      GoRoute(path: kLibraryScreen, builder: (context, state) => NotesScreen()),
    ],
  );
}
