import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/utils/app_contants.dart';
import '../../../data/db_helper.dart';
import '../../../data/models/inquiry_data.dart';
import '../../common_widgets/artist_card.dart';
import '../../common_widgets/common_text_field.dart';
import '../../common_widgets/main_title_widget.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  final DbHelper dbHelper = DbHelper();
  List<InquiryData>? inquiryList;
  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          20.verticalSpace,
          PageTitleWidget(
            title: 'MY INQUIRIES',
            onTap: () =>
                GoRouter.of(context).goNamed(Pages.homeRoute.toPathName()),
          ),
          35.verticalSpace,

          inquiryList != null && inquiryList?.length != 0
              ? Expanded(
                  child: ListView.builder(
                    itemCount: inquiryList?.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          color: AppColors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name : ${inquiryList?[index].name ?? ''}",
                                style: AppTextStyles.size14weight400().copyWith(
                                  color: AppColors.neutral700,
                                ),
                              ),
                              4.verticalSpace,
                              Text(
                                "Mobile : ${inquiryList?[index].mobile ?? ''}",
                                style: AppTextStyles.size14weight400().copyWith(
                                  color: AppColors.neutral700,
                                ),
                              ),
                              4.verticalSpace,
                              Text(
                                "Email : ${inquiryList?[index].email ?? ''}",
                                style: AppTextStyles.size14weight400().copyWith(
                                  color: AppColors.neutral700,
                                ),
                              ),
                              8.verticalSpace,
                              Text(
                                inquiryList?[index].title ?? '',
                                style: AppTextStyles.size16weight500().copyWith(
                                  color: AppColors.neutral700,
                                ),
                              ),
                              8.verticalSpace,
                              Text(
                                "Message : ${inquiryList?[index].message ?? ''}",
                                style: AppTextStyles.size15weight300().copyWith(
                                  color: AppColors.neutral700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "No Inquiries",
                        style: AppTextStyles.size16weight600().copyWith(
                          color: AppColors.neutral700,
                        ),
                      ),
                      8.verticalSpace,
                      Text(
                        "No inquiries have been submitted yet.",
                        style: AppTextStyles.size16weight400().copyWith(
                          color: AppColors.neutral700,
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Future<void> loadData() async {
    List<InquiryData> inquiries = await dbHelper.getInquiries();

    inquiryList = inquiries ?? [];
    setState(() {});
  }
}
