class IntroPagesData {
  String title;
  String image;
  int index;
  IntroPagesData(
      {required this.title,
      required this.image,
      required this.index});

  static List<IntroPagesData> data = [
    IntroPagesData(
        title: "اكتشف روائع النقوش القديمة واستعد لرحلة عبر الزمن",
        image: "assets/image/onboarding_1.png",
        index: 0),
    IntroPagesData(
        title: "استخدم الذكاء الاصطناعي لتحليل وفهم النصوص التاريخية بسهولة",
        image: "assets/image/onboarding_2.png",
        index: 1),
    IntroPagesData(
        title: "تجول في عالم التراث باستخدام خريطة تفاعلية للمواقع الأثرية",
        image: "assets/image/onboarding_3.png",
        index: 2),

  ];
}
