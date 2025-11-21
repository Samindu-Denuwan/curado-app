import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/common_widgets/home_bottom_nav_bar.dart';
import 'pages.dart';

class BottomNavBar extends StatelessWidget {
  final Widget child;
  const BottomNavBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 90, left: 16, right: 16),
              child: child,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: HomeBottomNavigationView(
              onHomeTab: () {
                GoRouter.of(context).goNamed(Pages.homeRoute.toPathName());
              },
              onCatalogueTap: () {
                GoRouter.of(context).goNamed(Pages.catalogueRoute.toPathName());
              },
              onEventsTap: () {
                GoRouter.of(context).goNamed(Pages.eventsRoute.toPathName());
              },
              onAccountTap: () {
                GoRouter.of(context).goNamed(Pages.accountRoute.toPathName());
              },
              selectedIndex: _calculateSelectedIndex(context),
            ),
          ),
        ],
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith(Pages.homeRoute.toPath())) return 0;
    if (location.startsWith(Pages.catalogueRoute.toPath())) return 1;
    if (location.startsWith(Pages.eventsRoute.toPath())) return 2;
    if (location.startsWith(Pages.accountRoute.toPath())) return 3;
    return 0;
  }
}
