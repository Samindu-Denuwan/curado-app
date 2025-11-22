import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart';
import 'next_button_widget.dart';

class MainTitleWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final void Function()? onTap;
  const MainTitleWidget({super.key, this.title, this.subTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.textBrown, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? "",
            style: AppTextStyles.size16weight500().copyWith(
              color: AppColors.textBrown,
            ),
          ),
          NextButtonWidget(text: subTitle ?? "", onTap: onTap),
        ],
      ),
    );
  }
}
