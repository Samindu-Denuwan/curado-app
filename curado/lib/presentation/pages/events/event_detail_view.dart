import 'package:cached_network_image/cached_network_image.dart';
import 'package:curado/core/themes/colors.dart';
import 'package:curado/core/utils/app_extensions.dart';
import 'package:curado/presentation/common_widgets/main_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/themes/text_styles.dart';
import '../../../core/utils/app_contants.dart';
import '../../../core/utils/app_images.dart';
import '../../../data/models/event_details_model.dart';

class EventDetailView extends StatefulWidget {
  final EventDetails? eventDetails;
  const EventDetailView({super.key, this.eventDetails});

  @override
  State<EventDetailView> createState() => _EventDetailViewState();
}

class _EventDetailViewState extends State<EventDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            20.verticalSpace,
            PageTitleWidget(
              title: widget.eventDetails?.title?.toUpperCase(),
              subTitle: widget.eventDetails?.date?.formatDateRange(),
              onTap: () => context.pop(),
            ),
            CachedNetworkImage(
              imageUrl:
                  widget.eventDetails?.imgUrl ?? AppConstants.defaultImageUrl,
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
              "ABOUT",
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
                widget.eventDetails?.about ?? "",
                style: AppTextStyles.size14weight400().copyWith(
                  color: AppColors.lightBlack,
                ),
              ),
            ),
            47.verticalSpace,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "DATE :",
                                  style: AppTextStyles.size16_7weight400()
                                      .copyWith(color: AppColors.textBlack),
                                ),
                                6.verticalSpace,
                                Text(
                                  textAlign: TextAlign.start,
                                  widget.eventDetails?.date ?? "",
                                  style: AppTextStyles.size13weight200(
                                    fontFamily: "Urbanist",
                                  ).copyWith(color: AppColors.textBlack),
                                ),
                              ],
                            ),
                            20.verticalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "HOST :",
                                  style: AppTextStyles.size16_7weight400()
                                      .copyWith(color: AppColors.textBlack),
                                ),
                                6.verticalSpace,
                                Text(
                                  textAlign: TextAlign.start,
                                  widget.eventDetails?.host ?? "",
                                  style: AppTextStyles.size13weight200(
                                    fontFamily: "Urbanist",
                                  ).copyWith(color: AppColors.textBlack),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "TIME :",
                                  style: AppTextStyles.size16_7weight400()
                                      .copyWith(color: AppColors.textBlack),
                                ),
                                6.verticalSpace,
                                Text(
                                  textAlign: TextAlign.start,
                                  widget.eventDetails?.time ?? "",
                                  style: AppTextStyles.size13weight200(
                                    fontFamily: "Urbanist",
                                  ).copyWith(color: AppColors.textBlack),
                                ),
                              ],
                            ),
                            20.verticalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "VENUE :",
                                  style: AppTextStyles.size16_7weight400()
                                      .copyWith(color: AppColors.textBlack),
                                ),
                                6.verticalSpace,
                                Text(
                                  textAlign: TextAlign.start,
                                  widget.eventDetails?.venue ?? "",
                                  style: AppTextStyles.size13weight200(
                                    fontFamily: "Urbanist",
                                  ).copyWith(color: AppColors.textBlack),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            35.verticalSpace,
            MainTitleWidget(title: "EVENT GALLERY", showNextBtn: false),
            48.verticalSpace,

            CommonGridView(widget: widget),
            48.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class CommonGridView extends StatelessWidget {
  const CommonGridView({super.key, required this.widget});

  final EventDetailView widget;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      itemCount: widget.eventDetails?.gallary?.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 194 / 260,
      ),
      itemBuilder: (context, index) {
        final url = widget.eventDetails?.gallary?[index];
        return CachedNetworkImage(
          imageUrl: url ?? AppConstants.defaultImageUrl,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          placeholder: (context, url) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.defaultImg),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.defaultImg),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        );
      },
    );
  }
}
