import 'package:arch_team_power/core/services/service_locator.dart';
import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/utils/app_assets.dart';
import 'package:arch_team_power/core/widgets/custom_app_bar.dart';
import 'package:arch_team_power/features/comments/presentation/manger/addCommenCubit/cubit/add_comment_cubit.dart';
import 'package:arch_team_power/features/comments/presentation/screens/widgets/build_write_messege.dart';
import 'package:arch_team_power/features/comments/presentation/screens/widgets/user_comment_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentsPage extends StatelessWidget {
  CommentsPage({super.key});
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (_) => sl<AddCommentCubit>())],
        child: SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.background,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.86.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 34.h),
                    const CustomAppBar(title: 'التعليقات'),
                    SizedBox(height: 34.h),
                    BlocBuilder<AddCommentCubit, AddCommentState>(
                      builder: (context, state) {
                        if (state is AddCommentSuccess) {
                          return ListView.builder(
                            itemCount: state.commentModel.length,

                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(16.0),
                            itemBuilder: (BuildContext context, int index) {
                              return buildMessage(
                                context,
                                name:
                                    state.commentModel[index].user?.name ??
                                    'مجهول',
                                role:
                                    state.commentModel[index].user?.role ?? '',
                                description:
                                    state.commentModel[index].description ?? '',
                                imageUser:
                                    state.commentModel[index].user?.image ?? '',

                                imageComment:
                                    (state.commentModel[index].images != null &&
                                        state
                                            .commentModel[index]
                                            .images!
                                            .isNotEmpty)
                                    ? state.commentModel[index].images!.first
                                    : '',
                              );
                            },
                          );
                        } else if (state is AddCommentLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is AddCommentFailure) {
                          return Center(child: Text(state.errorMessage));
                        } else {
                          return const Center(
                            child: Text('لا توجد تعليقات حتى الآن'),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: const WriteMessageAndSend(),
          ),
        ),
      ),
    );
  }
}
