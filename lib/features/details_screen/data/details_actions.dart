import 'package:arch_team_power/features/details_screen/widget/details_screen_body_info_actions_item.dart';
import 'package:arch_team_power/features/details_screen/widget/rate_dialog.dart';
import 'package:flutter/material.dart';

final List<Widget> actions = [
  DetailsScreenBodyInfoActionsItem(
    icon: 'assets/image/message_icon.svg',
    title: '45',
  ),
  DetailsScreenBodyInfoActionsItem(
    icon: 'assets/image/location_icon.svg',
    title: '4.5 km',
  ),
  RateAction(),

  DetailsScreenBodyInfoActionsItem(
    icon: 'assets/image/vr_icon.svg',
    title: 'VR',
  ),
  DetailsScreenBodyInfoActionsItem(
    icon: 'assets/image/voice_icon.svg',
    title: 'VO',
  ),
];

class RateAction extends StatelessWidget {
  const RateAction({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => RateDialog());
      },
      child: DetailsScreenBodyInfoActionsItem(
        icon: 'assets/image/star_icon.svg',
        title: '4.5',
      ),
    );
  }
}
