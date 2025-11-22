import 'package:flutter/material.dart';

import '../../core/themes/colors.dart' show AppColors;
import '../../core/themes/text_styles.dart';

class CommonButton extends StatelessWidget {
  final String? name;
  final void Function()? onTap;
  const CommonButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16.5),
        decoration: BoxDecoration(color: AppColors.btnColor),
        child: Center(
          child: Text(
            name ?? "",
            style: AppTextStyles.size16weight600(
              fontFamily: "Public Sans",
            ).copyWith(color: AppColors.neutral700),
          ),
        ),
      ),
    );
  }
}
