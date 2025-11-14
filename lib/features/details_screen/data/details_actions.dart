import 'package:flutter/material.dart';

import '../widget/details_screen_body_info_actions_item.dart';
import '../widget/rate_dialog.dart';

final List<Widget> actions = [
  DetailsScreenBodyInfoActionsItem(
    icon: 'assets/icons/message_icon.svg',
    title: '45',
  ),
  DetailsScreenBodyInfoActionsItem(
    icon: 'assets/icons/location_icon.svg',
    title: '4.5 km',
  ),
  RateAction(),

  DetailsScreenBodyInfoActionsItem(
    icon: 'assets/icons/vr_icon.svg',
    title: 'VR',
  ),
  DetailsScreenBodyInfoActionsItem(
    icon: 'assets/icons/voice_icon.svg',
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
        icon: 'assets/icons/star_icon.svg',
        title: '4.5',
      ),
    );
  }
}
