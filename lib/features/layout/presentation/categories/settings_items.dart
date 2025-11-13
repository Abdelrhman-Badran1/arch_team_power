
import '../../../../core/models/settings_item_model.dart';

class SettingsItemsData {
  static List<SettingsItemModel> items = [
    SettingsItemModel(
      title: "تعديل الملف الشخصي",
      iconPath: "assets/icons/edit_profile.png",
    ),
    SettingsItemModel(
      title: "تغيير اللغه",
      iconPath: "assets/icons/lang_ic.png",
    ),
    SettingsItemModel(
      title: "وسائل الدفع",
      iconPath: "assets/icons/payment_ic.png",
    ),
    SettingsItemModel(
      title: "الخصوصية",
      iconPath: "assets/icons/privacy_ic.png",
    ),
    SettingsItemModel(
      title: "الدعم",
      iconPath: "assets/icons/contact_ic.png",
    ),
    SettingsItemModel(
      title: "الخروج من الحساب",
      iconPath: "assets/icons/logout_ic.png",
      isLogout: true,
    ),
  ];
}
