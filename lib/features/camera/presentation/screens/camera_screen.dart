import 'package:arch_team_power/features/camera/presentation/screens/widget/camera_screen_body.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF4F2EF),
        body: CameraScreenBody(),
      ),
    );
  }
}
