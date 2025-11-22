import 'package:curado/core/utils/app_contants.dart';
import 'package:curado/core/utils/app_images.dart';
import 'package:curado/presentation/common_widgets/common_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../common_widgets/artist_card.dart';
import '../../common_widgets/main_title_widget.dart';

class CatalogueView extends StatelessWidget {
  CatalogueView({super.key});

  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          20.verticalSpace,
          PageTitleWidget(
            title: "CATALOGUE",
            onTap: () =>
                GoRouter.of(context).goNamed(Pages.homeRoute.toPathName()),
          ),
          34.verticalSpace,
          Row(
            children: [
              Flexible(
                child: CommonSearchTextField(
                  controller: _searchController,
                  hint: "Search",
                ),
              ),
              20.horizontalSpace,
              SvgPicture.asset(height: 23, AppImages.filter),
            ],
          ),
          34.verticalSpace,
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.only(bottom: 34),
              shrinkWrap: true,
              itemCount: AppConstants.sampleArtistDetailsList.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 80,
                mainAxisSpacing: 5,
                crossAxisSpacing: 8,
                childAspectRatio: 0.5,
              ),
              itemBuilder: (context, index) {
                final artist = AppConstants.sampleArtistDetailsList[index];
                return InkWell(
                  onTap: () {
                    context.pushNamed(
                      Pages.artistDetailsRoute.toPathName(),
                      extra: AppConstants.sampleArtistDetailsList[index],
                    );
                  },
                  child: ArtistCard(
                    url: artist.imgUrl,
                    name: artist.name?.toUpperCase(),
                    isGridView: true,
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
