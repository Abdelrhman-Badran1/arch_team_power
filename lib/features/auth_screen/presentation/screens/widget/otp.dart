import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/otp_field.dart';
import 'package:flutter/cupertino.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [OtpField(), OtpField(), OtpField(), OtpField()],
        ),
      ),
    );
  }
}
