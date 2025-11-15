import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routes/app_router.dart';
import '../widget/fav_list.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children:  [
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).push(AppRouter.kHomeScreen);
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 90.w,

                  ),
                  Text(
                    "المفضلة",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(child: FavList()),
            ],
          ),
        ),
      ),
    );
  }
}
