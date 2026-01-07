import 'package:curado/data/models/inquiry_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../data/db_helper.dart';
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
  final DbHelper dbHelper = DbHelper();

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
            CommonButton(
              name: "Send message",
              onTap: () {
                addToDb(
                  InquiryData(
                    name: _nameController.text,
                    mobile: _mobileController.text,
                    email: _emailController.text,
                    message: _messageController.text,
                    title: artDetails?.art?.title,
                  ),
                  context,
                );
              },
            ),
            32.verticalSpace,
          ],
        ),
      ),
    );
  }

  Future<void> addToDb(InquiryData inquiryData, BuildContext context) async {
    if (_nameController.text.isNotEmpty &&
        _mobileController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _messageController.text.isNotEmpty) {
      await dbHelper.insertInquiry(inquiryData);
      clear();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Inquiry added successfully!")));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("All fields are required")));
    }
  }

  void clear() {
    _nameController.clear();
    _mobileController.clear();
    _emailController.clear();
    _messageController.clear();
  }
}
