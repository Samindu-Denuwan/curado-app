import 'package:cached_network_image/cached_network_image.dart';
import 'package:curado/core/utils/app_contants.dart';
import 'package:curado/presentation/common_widgets/next_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/utils/app_images.dart';
import '../../../data/models/art_details_model.dart';
import '../../../data/models/artist_details_model.dart';
import '../../common_widgets/art_work_card.dart';
import '../../common_widgets/artist_card.dart';
import '../../common_widgets/event_card.dart';
import '../../common_widgets/main_title_widget.dart';

class ArtDetailsView extends StatelessWidget {
  final ArtDetails? artDetails;
  const ArtDetailsView({super.key, this.artDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            20.verticalSpace,
            PageTitleWidget(
              title: artDetails?.art?.title?.toUpperCase(),
              onTap: () =>
                  GoRouter.of(context).goNamed(Pages.homeRoute.toPathName()),
            ),
            30.verticalSpace,
            CachedNetworkImage(
              imageUrl: artDetails?.art?.imgUrl ?? AppConstants.defaultImageUrl,
              imageBuilder: (context, imageProvider) => Container(
                width: 194,
                height: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              placeholder: (context, url) => Container(
                width: 194,
                height: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image(image: AssetImage(AppImages.defaultImg)).image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                width: 194,
                height: 260,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image(image: AssetImage(AppImages.defaultImg)).image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),

            40.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                textAlign: TextAlign.center,
                artDetails?.art?.description ?? "",
                style: AppTextStyles.size14weight400().copyWith(
                  color: AppColors.lightBlack,
                ),
              ),
            ),

            20.verticalSpace,

            ArtistCard(
              url: artDetails?.designer?.url,
              name: artDetails?.designer?.name?.toUpperCase(),
            ),
            20.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: AppColors.whiteBorder),
                    bottom: BorderSide(width: 1, color: AppColors.whiteBorder),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    "ART TYPE :",
                                    style: AppTextStyles.size16_7weight400()
                                        .copyWith(color: AppColors.textBlack),
                                  ),
                                  6.verticalSpace,
                                  Text(
                                    textAlign: TextAlign.start,
                                    artDetails?.art?.type ?? "",
                                    style: AppTextStyles.size13weight200(
                                      fontFamily: "Urbanist",
                                    ).copyWith(color: AppColors.textBlack),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Flexible(
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    "SIZE :",
                                    style: AppTextStyles.size16_7weight400()
                                        .copyWith(color: AppColors.textBlack),
                                  ),
                                  6.verticalSpace,
                                  Text(
                                    textAlign: TextAlign.start,
                                    artDetails?.art?.size ?? "",
                                    style: AppTextStyles.size13weight200(
                                      fontFamily: "Urbanist",
                                    ).copyWith(color: AppColors.textBlack),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            20.verticalSpace,
            NextButtonWidget(
              text: "ADD TO INQUIRY",
              onTap: () {
                context.pushNamed(
                  Pages.artInquiryRoute.toPathName(),
                  extra: artDetails,
                );
              },
            ),

            45.verticalSpace,
            MainTitleWidget(title: "SIMILAR ARTWORKS", showNextBtn: false),
            45.verticalSpace,

            ///ARTWORK
            SizedBox(
              height: 388,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: AppConstants.sampleArtDetails.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 23),
                    child: InkWell(
                      onTap: () {
                        context.pushNamed(
                          Pages.artDetailsRoute.toPathName(),
                          extra: AppConstants.sampleArtDetails[index],
                        );
                      },
                      child: ArtWorkCard(
                        title: AppConstants.sampleArtDetails[index].art?.title,
                        designer:
                            AppConstants.sampleArtDetails[index].designer?.name,
                        type: AppConstants.sampleArtDetails[index].art?.type,
                        url: AppConstants.sampleArtDetails[index].art?.imgUrl,
                      ),
                    ),
                  );
                },
              ),
            ),
            45.verticalSpace,
          ],
        ),
      ),
    );
  }
}
