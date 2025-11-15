import 'package:arch_team_power/core/utils/app_icons.dart';

import '../../../../core/models/settings_item_model.dart';

class SettingsItemsData {
  static List<SettingsItemModel> items = [
    SettingsItemModel(
      title: "تعديل الملف الشخصي",
      iconPath: AppIcons.kEditProfileIcon,
    ),
    SettingsItemModel(title: "تغيير اللغه", iconPath: AppIcons.kLangIcon),
    SettingsItemModel(title: "وسائل الدفع", iconPath: AppIcons.kPaymentIcon),
    SettingsItemModel(title: "الخصوصية", iconPath: AppIcons.kPrivacyIcon),
    SettingsItemModel(title: "الدعم", iconPath: AppIcons.kContactIcon),
    SettingsItemModel(
      title: "الخروج من الحساب",
      iconPath: AppIcons.kLogOutIcon,
      isLogout: true,
    ),
  ];
}
