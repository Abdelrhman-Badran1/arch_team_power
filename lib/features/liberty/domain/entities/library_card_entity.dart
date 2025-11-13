import 'package:arch_team_power/core/images/app_images.dart';

class LibraryCardEntity {
  final String name;
  final String location;
  final String status;
  final String rate;
  final String image;
  final bool isFavorite;

  LibraryCardEntity({
    required this.name,
    required this.location,
    required this.status,
    required this.rate,
    required this.image,
    required this.isFavorite,
  });

  static List<LibraryCardEntity> cards = [
    LibraryCardEntity(
      name: "مكتبة النقوش الاثريه",
      location: "القاهرة",
      status: "غير واضح",
      rate: "4.5",
      image: AppImages.testImage,
      isFavorite: false,
    ),
    LibraryCardEntity(
      name: "مكتبة النقوش الاثريه",
      location: "القاهرة",
      status: "غير واضح",
      rate: "4.5",
      image: AppImages.testImage,
      isFavorite: true,
    ),
    LibraryCardEntity(
      name: "مكتبة النقوش الاثريه",
      location: "القاهرة",
      status: "غير واضح",
      rate: "4.5",
      image: AppImages.testImage,
      isFavorite: true,
    ),
    LibraryCardEntity(
      name: "مكتبة النقوش الاثريه",
      location: "القاهرة",
      status: "غير واضح",
      rate: "4.5",
      image: AppImages.testImage,
      isFavorite: true,
    ),
    LibraryCardEntity(
      name: "مكتبة النقوش الاثريه",
      location: "القاهرة",
      status: "غير واضح",
      rate: "4.5",
      image: AppImages.testImage,
      isFavorite: true,
    ),
    LibraryCardEntity(
      name: "مكتبة النقوش الاثريه",
      location: "القاهرة",
      status: "غير واضح",
      rate: "4.5",
      image: AppImages.testImage,
      isFavorite: true,
    ),
  ];
}
