import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart';

class CommonTextField extends StatelessWidget {
  final String? title;
  final String? hint;
  final TextEditingController? controller;
  final bool isTextArea;

  const CommonTextField({
    super.key,
    required this.title,
    this.hint,
    required this.controller,
    this.isTextArea = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.start,
          title ?? "",
          style: AppTextStyles.size16weight500().copyWith(
            color: AppColors.textFieldColor,
          ),
        ),
        8.verticalSpace,
        TextFormField(
          controller: controller,
          onChanged: (text) {},
          enableInteractiveSelection: true,

          maxLines: isTextArea == true ? null : 1,
          minLines: isTextArea == true ? 4 : 1,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.neutral300, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.neutral300, width: 1),
            ),

            hintText: hint,
            hintStyle: AppTextStyles.size16weight400().copyWith(
              color: AppColors.neutral700,
            ),
          ),
          style: AppTextStyles.size16weight400().copyWith(
            color: AppColors.neutral700,
          ),
        ),
      ],
    );
  }
}
