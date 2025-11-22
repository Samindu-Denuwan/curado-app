import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart';
import '../../core/utils/app_contants.dart';
import '../../core/utils/app_images.dart';

class EventCard extends StatelessWidget {
  final String? url;
  final String? title;
  final String? date;
  final String? time;
  final String? venue;
  final String? type;
  const EventCard({
    super.key,
    this.url,
    this.title,
    this.date,
    this.time,
    this.venue,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      color: AppColors.white,
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: url ?? AppConstants.defaultImageUrl,
            imageBuilder: (context, imageProvider) => Container(
              width: 118,
              height: 159,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            placeholder: (context, url) => Container(
              width: 118,
              height: 159,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image(image: AssetImage(AppImages.defaultImg)).image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: 118,
              height: 159,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image(image: AssetImage(AppImages.defaultImg)).image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          12.horizontalSpace,
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                18.verticalSpace,
                Text(
                  textAlign: TextAlign.start,
                  title ?? "",
                  style: AppTextStyles.size16weight600().copyWith(
                    color: AppColors.textBlack,
                  ),
                ),
                10.verticalSpace,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Date: ",
                        style: AppTextStyles.size12weight400().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                      TextSpan(
                        text: date ?? "",
                        style: AppTextStyles.size12weight400().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Time: ",
                        style: AppTextStyles.size12weight400().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                      TextSpan(
                        text: time ?? "",
                        style: AppTextStyles.size12weight400().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Venue: ",
                        style: AppTextStyles.size12weight400().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                      TextSpan(
                        text: venue ?? "",
                        style: AppTextStyles.size12weight400().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Type: ",
                        style: AppTextStyles.size12weight400().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                      TextSpan(
                        text: type ?? "",
                        style: AppTextStyles.size12weight400().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                18.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
