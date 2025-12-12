import 'package:arch_team_power/features/details_screen/presentation/screens/widget/details_screen_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff9f8f8),
        body: DetailsScreenBody(),
      ),
    );
  }
}
