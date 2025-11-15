import 'package:arch_team_power/features/auth_screen/presentation/screens/widget/otp_field.dart';
import 'package:flutter/cupertino.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [OtpField(), OtpField(), OtpField(), OtpField()],
        ),
      ),
    );
  }
}
