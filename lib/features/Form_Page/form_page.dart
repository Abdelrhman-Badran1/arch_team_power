import 'package:arch_team_power/core/theme/app_colors.dart';
import 'package:arch_team_power/core/theme/app_text_style.dart';
import 'package:arch_team_power/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyFormPage extends StatelessWidget {
  const MyFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> sampleImages = [
      'https://picsum.photos/800/400?image=10',
      'https://picsum.photos/800/400?image=20',
      'https://picsum.photos/800/400?image=30',
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('البطاقه الخاصه بي'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                children: [
                  Material(
                    elevation: 9,
                    borderRadius: BorderRadius.circular(12),

                    child: Container(
                      height: 200,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 18,

                            offset: Offset(0, 9),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: PageView.builder(
                          itemCount: sampleImages.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              "image/cardvisa.png",
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      sampleImages.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black26),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              CustomTextField(
                heightTextfield: 64,
                textAlign: TextAlign.right,
                hintText: "محمد الزهراني",
                textFieldTitle: "الاسم الثنائي",
              ),

              const SizedBox(height: 10),
              CustomTextField(
                heightTextfield: 64,
                hintText: "1267  2312  0918  2344",
                textFieldTitle: "رقم البطاقه :",
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('هذا نص على الشمال'),
                  Text('نص على اليمين'),
                ],
              ),

              const SizedBox(height: 16),

              // ========== العنصر الرابع: Row فيه 2 TextField نص الشاشة ==========
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: MyHalfTextField(hintText: 'نصفي 1'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: MyHalfTextField(hintText: 'نصفي 2'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // ========== العنصر الخامس: Button ==========
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Confirm pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'تأكيد',
                    style: AppTextStyles.syleNorsalMedium15(context).copyWith(
                      fontSize: 10.sp,
                      letterSpacing: 1,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ========== Widgets متكررة / Custom Widgets ==========
class MyFullWidthTextField extends StatelessWidget {
  final String hintText;
  const MyFullWidthTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
      ),
    );
  }
}

class MyHalfTextField extends StatelessWidget {
  final String hintText;
  const MyHalfTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
      ),
    );
  }
}
