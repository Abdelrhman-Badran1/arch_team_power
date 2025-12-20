import 'package:arch_team_power/features/home/presentation/manger/cubits/cubit/slider_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderCubitCubit, SliderCubitState>(
      builder: (context, state) {
        if (state is SliderCubitLoaded) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              height: 180.h,
              child: PageView.builder(
                itemCount: state.sliders.length,
                itemBuilder: (context, index) {
                  final slider = state.sliders[index];

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network(
                      slider.image!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is SliderCubitError) {
          return const Center(child: Text("error"));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
