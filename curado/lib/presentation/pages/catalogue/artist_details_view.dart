import 'package:cached_network_image/cached_network_image.dart';
import 'package:curado/core/utils/app_contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/utils/app_images.dart';
import '../../../data/models/artist_details_model.dart';
import '../../common_widgets/art_work_card.dart';
import '../../common_widgets/event_card.dart';
import '../../common_widgets/main_title_widget.dart';

class ArtistDetailsView extends StatelessWidget {
  final ArtistDetails? artistDetails;
  const ArtistDetailsView({super.key, this.artistDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            20.verticalSpace,
            PageTitleWidget(
              title: artistDetails?.name?.toUpperCase(),
              onTap: () => context.pop(),
            ),
            30.verticalSpace,
            CachedNetworkImage(
              imageUrl: artistDetails?.imgUrl ?? AppConstants.defaultImageUrl,
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

            48.verticalSpace,
            Text(
              "ABOUT ARTIST",
              style: AppTextStyles.size14weight500().copyWith(
                color: AppColors.textBrown,
                decoration: TextDecoration.underline,
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                textAlign: TextAlign.center,
                artistDetails?.about ?? "",
                style: AppTextStyles.size14weight400().copyWith(
                  color: AppColors.lightBlack,
                ),
              ),
            ),

            50.verticalSpace,
            MainTitleWidget(title: "WORKS", showNextBtn: false),
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
                    child: ArtWorkCard(
                      title: AppConstants.sampleArtDetails[index].art?.title,
                      designer:
                          AppConstants.sampleArtDetails[index].designer?.name,
                      type: AppConstants.sampleArtDetails[index].art?.type,
                      url: AppConstants.sampleArtDetails[index].art?.imgUrl,
                    ),
                  );
                },
              ),
            ),
            45.verticalSpace,
            MainTitleWidget(title: "EXHIBITIONS", showNextBtn: false),
            45.verticalSpace,
            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(
                        Pages.eventDetailsRoute.toPathName(),
                        extra: AppConstants.sampleEvents[index],
                      );
                    },
                    child: EventCard(
                      url: AppConstants.sampleEvents[index].imgUrl,
                      title: AppConstants.sampleEvents[index].title,
                      date: AppConstants.sampleEvents[index].date,
                      time: AppConstants.sampleEvents[index].time,
                      venue: AppConstants.sampleEvents[index].venue,
                      type: AppConstants.sampleEvents[index].type,
                    ),
                  ),
                );
              },
            ),
            30.verticalSpace,
          ],
        ),
      ),
    );
  }
}
