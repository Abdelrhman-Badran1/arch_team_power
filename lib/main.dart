import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/features/notes/models/note_model.dart';
import 'package:arch_team_power/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('notes');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(324.77, 674.65),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: const Locale('ar'),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          routerConfig: AppRouter.router, // نظام التنقل بالـ GoRouter
        );
      },
    );
  }
}

// الكود دا تبعي بشغلله عندي محدش يمسحه او يعدل عليه حاجه
// import 'package:arch_team_power/core/routes/app_router.dart';
// import 'package:arch_team_power/features/Notifications/presentation/screens/notifications_page.dart';
// import 'package:arch_team_power/generated/l10n.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() {
//   runApp(DevicePreview(enabled: true, builder: (context) => const MyTestApp()));
// }

// class MyTestApp extends StatelessWidget {
//   const MyTestApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(324.77, 674.65),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (context, child) {
//         return MaterialApp(
//           useInheritedMediaQuery: true,
//           debugShowCheckedModeBanner: false,
//           locale: DevicePreview.locale(context),

//           // DevicePreview builder
//           builder: DevicePreview.appBuilder,

//           // Localization setup
//           localizationsDelegates: const [
//             S.delegate,
//             GlobalMaterialLocalizations.delegate,
//             GlobalWidgetsLocalizations.delegate,
//             GlobalCupertinoLocalizations.delegate,
//           ],
//           supportedLocales: S.delegate.supportedLocales,

//           // Home Page (زي ما انت عايز)
//           home: const NotificationsPage(),
//         );
//       },
//     );
//   }
// }
