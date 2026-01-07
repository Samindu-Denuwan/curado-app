import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart';
import '../../core/utils/app_images.dart';

class NextButtonWidget extends StatelessWidget {
  final String? text;
  final void Function()? onTap;

  const NextButtonWidget({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text ?? "",
              style: AppTextStyles.size10weight400().copyWith(
                color: AppColors.textBrown,
              ),
            ),
            6.horizontalSpace,
            SvgPicture.asset(width: 26, AppImages.next),
          ],
        ),
      ),
    );
  }
}
