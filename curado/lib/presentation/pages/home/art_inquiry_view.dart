import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/pages.dart';
import '../../../data/models/art_details_model.dart';
import '../../common_widgets/common_button.dart';
import '../../common_widgets/common_text_field.dart';
import '../../common_widgets/main_title_widget.dart';

class ArtInquiryView extends StatelessWidget {
  final ArtDetails? artDetails;
  ArtInquiryView({super.key, this.artDetails});

  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            20.verticalSpace,
            PageTitleWidget(
              title: 'INQUIRY ABOUT "${artDetails?.art?.title?.toUpperCase()}"',
              onTap: () => context.pop(),
            ),
            35.verticalSpace,
            CommonTextField(
              title: "Name",
              hint: "Jay Shetty",
              controller: _nameController,
            ),
            12.verticalSpace,
            CommonTextField(
              title: "Mobile Number",
              hint: "+94 78 635 7549",
              controller: _mobileController,
            ),
            12.verticalSpace,
            CommonTextField(
              title: "Email",
              hint: "jay.shetty@example.com",
              controller: _emailController,
            ),
            12.verticalSpace,
            CommonTextField(
              title: "Message",
              hint: "Los Angeles, CA",
              controller: _messageController,
              isTextArea: true,
            ),
            25.verticalSpace,
            CommonButton(name: "Send message", onTap: () {}),
            32.verticalSpace,
          ],
        ),
      ),
    );
  }
}
