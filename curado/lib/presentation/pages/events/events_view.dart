import 'package:curado/core/themes/colors.dart';
import 'package:curado/presentation/common_widgets/main_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/utils/app_contants.dart';
import '../../../data/models/response_model.dart';
import '../../common_widgets/event_card.dart';

class EventsView extends StatefulWidget {
  const EventsView({super.key});

  @override
  State<EventsView> createState() => _EventsViewState();
}

class _EventsViewState extends State<EventsView> {
  CommonResponse? _selectedRadio;

  String? _selectedDropdown = AppConstants.eventTypesList[0] ?? "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.verticalSpace,
            PageTitleWidget(
              title: "EVENTS",
              onTap: () =>
                  GoRouter.of(context).goNamed(Pages.homeRoute.toPathName()),
            ),
            34.verticalSpace,

            SizedBox(
              height: 25,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: AppConstants.upComingPastEvent.length,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = AppConstants.upComingPastEvent[index];

                  return Row(
                    children: [
                      Radio<CommonResponse>(
                        activeColor: AppColors.textBlack,
                        visualDensity: VisualDensity.compact,
                        value: item,
                        groupValue: _selectedRadio,
                        onChanged: (value) {
                          setState(() => _selectedRadio = value);
                        },
                      ),
                      Text(
                        item.description ?? "",
                        style: AppTextStyles.size14weight500().copyWith(
                          color: AppColors.textBlack,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            20.verticalSpace,
            Align(
              alignment: AlignmentGeometry.topRight,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.lightGray),
                ),
                child: DropdownButton(
                  style: AppTextStyles.size14weight500().copyWith(
                    color: AppColors.textBlack,
                  ),
                  underline: SizedBox.shrink(),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  value: _selectedDropdown,
                  items: AppConstants.eventTypesList
                      .map(
                        (type) => DropdownMenuItem(
                          value: type,
                          child: Text(
                            type,
                            style: AppTextStyles.size14weight500().copyWith(
                              color: AppColors.textBlack,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedDropdown = value;
                    });
                  },
                ),
              ),
            ),

            20.verticalSpace,
            ListView.builder(
              itemCount: AppConstants.sampleEvents.length,
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
          ],
        ),
      ),
    );
  }
}
