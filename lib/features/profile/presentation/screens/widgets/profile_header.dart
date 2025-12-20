import 'package:arch_team_power/core/routes/app_router.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:arch_team_power/features/profile/presentation/manger/cubits/get_profile_data_cubit/get_profile_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetProfileDataCubit, GetProfileDataState>(
      listener: (context, state) {
        if (state is GetProfileDataSuccess) {
          // Handle success state
        } else if (state is GetProfileDataFailure) {
          // Handle failure state
        } else if (state is GetProfileDataLoading) {
          // Handle loading state
        }
      },
      builder: (context, state) {
        if (state is GetProfileDataSuccess) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 28.r,
                backgroundImage: const AssetImage(AppAssets.kProfileImage2),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.profileData.userName,
                    style: AppTextStyles.syleNorsalRegular14(context),
                  ),
                  Text(
                    "سائح",
                    style: AppTextStyles.syleNorsalRegular10(
                      context,
                    ).copyWith(color: const Color(0xFF8A8A8A)),
                  ),
                ],
              ),

              GestureDetector(
                onTap: () =>
                    GoRouter.of(context).push(AppRouter.kSettingsScreen),
                child: Icon(Icons.menu, size: 26.sp),
              ),
            ],
          );
        } else if (state is GetProfileDataFailure) {
          return Text(
            "حدث خطأ: ${state.errorMessage}",
            style: AppTextStyles.syleNorsalRegular14(
              context,
            ).copyWith(color: Colors.red),
          );
        } else if (state is GetProfileDataLoading) {
          return SizedBox(
            height: 56.h,
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return SizedBox(
          height: 56.h,
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
