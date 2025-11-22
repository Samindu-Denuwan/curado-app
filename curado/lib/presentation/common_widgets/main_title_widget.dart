import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart';
import '../../core/utils/app_images.dart';
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

class PageTitleWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final void Function()? onTap;
  const PageTitleWidget({super.key, this.title, this.subTitle, this.onTap});

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
          InkWell(
            onTap: onTap,
            child: SvgPicture.asset(width: 26, AppImages.back),
          ),
          Column(
            children: [
              Text(
                title ?? "",
                style: AppTextStyles.size16weight500().copyWith(
                  color: AppColors.textBrown,
                ),
              ),
              Visibility(
                visible: subTitle != null && subTitle != "",
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    subTitle ?? "",
                    style: AppTextStyles.size12weight300().copyWith(
                      color: AppColors.textBrown,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox.shrink(),
        ],
      ),
    );
  }
}
