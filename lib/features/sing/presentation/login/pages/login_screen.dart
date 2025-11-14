import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'تسجيل الدخول',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 48.0),
                const Text(
                  'البريد الإلكتروني',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'ادخل البريد الإلكتروني',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'كلمة المرور',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'كلمة المرور',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.3),
                      ), // قبل التركيز
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                      ), // بعد التركيز
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: null),
                        const Text('تذكرني'),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).push(AppRouter.kForgotPasswordView);
                      },
                      child: const Text(
                        'هل نسيت كلمة المرور؟',
                        style: TextStyle(color: Color(0xffD2B48C)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD2B48C),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'أو',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 58,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3F1F1),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.g_translate),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Container(
                      height: 58,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3F1F1),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.g_translate),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Container(
                      height: 58,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF3F1F1),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.g_translate),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 150.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'ليس لديك حساب؟ ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kRegisterScreen);
                      },
                      child: Text(
                        'إنشاء حساب',
                        style: TextStyle(
                          color: Color(0xffD2B48C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
