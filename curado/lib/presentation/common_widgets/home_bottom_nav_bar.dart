import 'package:curado/core/themes/colors.dart';
import 'package:curado/core/utils/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/themes/text_styles.dart';

class HomeBottomNavigationView extends StatefulWidget {
  final Function()? onHomeTab;
  final Function()? onCatalogueTap;
  final Function()? onEventsTap;
  final Function()? onAccountTap;
  final int? selectedIndex;

  const HomeBottomNavigationView({
    super.key,
    this.onHomeTab,
    this.onCatalogueTap,
    this.onEventsTap,
    this.onAccountTap,
    this.selectedIndex = 0,
  });

  @override
  State<HomeBottomNavigationView> createState() =>
      _HomeBottomNavigationViewState();
}

class _HomeBottomNavigationViewState extends State<HomeBottomNavigationView> {
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.bottomCenter,
      child: Container(
        decoration: BoxDecoration(color: AppColors.white),
        child: Container(
          height: 78,
          decoration: BoxDecoration(color: AppColors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                NavBarItem(
                  context: context,
                  index: 0,
                  title: "Home",
                  icon: AppImages.homeIcon,
                  onTap: widget.onHomeTab,
                ),
                NavBarItem(
                  context: context,
                  index: 1,
                  title: "Catalogue",
                  icon: AppImages.catalogueIcon,
                  onTap: widget.onCatalogueTap,
                ),
                NavBarItem(
                  context: context,
                  index: 2,
                  title: "Events",
                  icon: AppImages.eventsIcon,
                  onTap: widget.onEventsTap,
                ),
                NavBarItem(
                  context: context,
                  index: 3,
                  title: "Inquiry",
                  icon: AppImages.accountIcon,
                  onTap: widget.onAccountTap,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded NavBarItem({
    BuildContext? context,
    String? title,
    String? icon,
    int? index,
    void Function()? onTap,
  }) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 60,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: widget.selectedIndex == index
                ? Colors.black.withAlpha(15)
                : Colors.transparent,
          ),
          child: InkWell(
            onTap: onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  height: widget.selectedIndex == index ? 23 : 18,
                  icon ?? "",
                ),
                5.verticalSpace,
                Text(
                  title ?? "",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.size10weight600(
                    fontFamily: "Public Sans",
                  ).copyWith(color: AppColors.neutral500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
