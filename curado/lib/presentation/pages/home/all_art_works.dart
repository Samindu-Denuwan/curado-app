import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../../core/utils/app_contants.dart';
import '../../common_widgets/art_work_card.dart';
import '../../common_widgets/main_title_widget.dart';

class AllArtWorksView extends StatelessWidget {
  const AllArtWorksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          20.verticalSpace,
          PageTitleWidget(title: "ARTWORKS", onTap: () => context.pop()),
          49.verticalSpace,

          ///ARTWORK
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 30),
              itemCount: AppConstants.sampleArtDetails.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 23),
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(
                        Pages.artDetailsRoute.toPathName(),
                        extra: AppConstants.sampleArtDetails[index],
                      );
                    },
                    child: AllArtWorkCard(
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
        ],
      ),
    );
  }
}
