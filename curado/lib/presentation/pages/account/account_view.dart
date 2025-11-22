import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../../core/utils/app_contants.dart';
import '../../common_widgets/artist_card.dart';
import '../../common_widgets/common_text_field.dart';
import '../../common_widgets/main_title_widget.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          20.verticalSpace,
          PageTitleWidget(
            title: 'MY ACCOUNT',
            onTap: () =>
                GoRouter.of(context).goNamed(Pages.homeRoute.toPathName()),
          ),
          35.verticalSpace,
          ArtistCard(url: AppConstants.defaultImageUrl, name: "JAY SHETTY"),
          20.verticalSpace,
          CommonTextField(
            isReadOnly: true,
            title: "Name",
            hint: "Jay Shetty",
            controller: TextEditingController(text: "Jay Shetty"),
          ),
          12.verticalSpace,
          CommonTextField(
            isReadOnly: true,
            title: "Mobile Number",
            hint: "+94 78 635 7549",
            controller: TextEditingController(text: "+94 78 635 7549"),
          ),
          12.verticalSpace,
          CommonTextField(
            isReadOnly: true,
            title: "Email",
            hint: "jay.shetty@example.com",
            controller: TextEditingController(text: "jay.shetty@example.com"),
          ),
        ],
      ),
    );
  }
}
