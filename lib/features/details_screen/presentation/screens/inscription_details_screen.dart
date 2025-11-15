import 'package:arch_team_power/features/details_screen/presentation/screens/widget/inscription_details_screen_body.dart';
import 'package:flutter/material.dart';

class InscriptionDetailsScreen extends StatelessWidget {
  const InscriptionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff9f8f8),
        body: InscriptionDetailsScreenBody(),
      ),
    );
  }
}
