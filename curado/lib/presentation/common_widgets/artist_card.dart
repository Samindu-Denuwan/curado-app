import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart';
import '../../core/utils/app_contants.dart';
import '../../core/utils/app_images.dart';

class ArtistCard extends StatelessWidget {
  final String? url;
  final String? name;
  const ArtistCard({super.key, this.url, this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 93,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: url ?? AppConstants.defaultImageUrl,
            imageBuilder: (context, imageProvider) => Container(
              width: 93,
              height: 93,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            placeholder: (context, url) => Container(
              width: 93,
              height: 93,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: Image(image: AssetImage(AppImages.defaultImg)).image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: 93,
              height: 93,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: Image(image: AssetImage(AppImages.defaultImg)).image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          12.verticalSpace,
          Center(
            child: Text(
              textAlign: TextAlign.center,
              name ?? "",
              style: AppTextStyles.size10weight400().copyWith(
                color: AppColors.textBrown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
