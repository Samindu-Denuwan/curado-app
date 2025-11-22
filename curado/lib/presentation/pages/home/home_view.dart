import 'package:curado/presentation/common_widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../../core/utils/app_contants.dart';
import '../../common_widgets/art_work_card.dart';
import '../../common_widgets/artist_card.dart';
import '../../common_widgets/main_title_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            20.verticalSpace,
            MainTitleWidget(
              title: "LATEST ARTWORKS",
              subTitle: "VIEW ALL ARTWORKS",
              onTap: () {},
            ),
            49.verticalSpace,

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

            ///ARTIST
            60.verticalSpace,
            MainTitleWidget(
              title: "FEATURE ARTISTS",
              subTitle: "VIEW ALL ARTISTS",
              onTap: () {
                GoRouter.of(context).goNamed(Pages.catalogueRoute.toPathName());
              },
            ),
            45.verticalSpace,
            SizedBox(
              height: 150,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: AppConstants.sampleArtDetails.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: ArtistCard(
                      url: AppConstants.sampleArtDetails[index].designer?.url,
                      name: AppConstants.sampleArtDetails[index].designer?.name
                          ?.toUpperCase(),
                    ),
                  );
                },
              ),
            ),

            ///UPCOMING EVENTS
            50.verticalSpace,
            MainTitleWidget(
              title: "UPCOMING EVENTS",
              subTitle: "VIEW ALL EVENTS",
              onTap: () {
                GoRouter.of(context).goNamed(Pages.eventsRoute.toPathName());
              },
            ),
            48.verticalSpace,
            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: EventCard(
                    url: AppConstants.sampleEvents[index].imgUrl,
                    title: AppConstants.sampleEvents[index].title,
                    date: AppConstants.sampleEvents[index].date,
                    time: AppConstants.sampleEvents[index].time,
                    venue: AppConstants.sampleEvents[index].venue,
                    type: AppConstants.sampleEvents[index].type,
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
