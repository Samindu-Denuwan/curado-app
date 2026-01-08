import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart' show AppTextStyles;
import '../../core/utils/app_contants.dart';
import '../../core/utils/app_images.dart';

class ArtWorkCard extends StatelessWidget {
  final String? url;
  final String? title;
  final String? designer;
  final String? type;
  const ArtWorkCard({
    super.key,
    this.url,
    this.title,
    this.designer,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 384,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(width: 1, color: AppColors.textBlack),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: url ?? AppConstants.defaultImageUrl,
            imageBuilder: (context, imageProvider) => Container(
              width: 213,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            placeholder: (context, url) => Container(
              width: 213,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image(image: AssetImage(AppImages.defaultImg)).image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: 213,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image(image: AssetImage(AppImages.defaultImg)).image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(14, 14, 14, 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "",
                  maxLines: 1,
                  style: AppTextStyles.size16_7weight400().copyWith(
                    color: AppColors.textBlack,
                  ),
                ),
                6.verticalSpace,
                Text(
                  designer ?? "",
                  maxLines: 1,
                  style: AppTextStyles.size15weight300(
                    fontFamily: "Urbanist",
                  ).copyWith(color: AppColors.textBlack),
                ),
                5.7.verticalSpace,
                Text(
                  type ?? "",
                  maxLines: 1,
                  style: AppTextStyles.size13weight200(
                    fontFamily: "Urbanist",
                  ).copyWith(color: AppColors.textBlack),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AllArtWorkCard extends StatelessWidget {
  final String? url;
  final String? title;
  final String? designer;
  final String? type;
  const AllArtWorkCard({
    super.key,
    this.url,
    this.title,
    this.designer,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(width: 1, color: AppColors.textBlack),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: url ?? AppConstants.defaultImageUrl,
            imageBuilder: (context, imageProvider) => Container(
              width: double.infinity,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            placeholder: (context, url) => Container(
              width: double.infinity,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image(image: AssetImage(AppImages.defaultImg)).image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: double.infinity,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image(image: AssetImage(AppImages.defaultImg)).image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(14, 14, 14, 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "",
                  maxLines: 1,
                  style: AppTextStyles.size16_7weight400().copyWith(
                    color: AppColors.textBlack,
                  ),
                ),
                6.verticalSpace,
                Text(
                  designer ?? "",
                  maxLines: 1,
                  style: AppTextStyles.size15weight300(
                    fontFamily: "Urbanist",
                  ).copyWith(color: AppColors.textBlack),
                ),
                5.7.verticalSpace,
                Text(
                  type ?? "",
                  maxLines: 1,
                  style: AppTextStyles.size13weight200(
                    fontFamily: "Urbanist",
                  ).copyWith(color: AppColors.textBlack),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
