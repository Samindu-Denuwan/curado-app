import 'dart:io';

import 'package:flutter/material.dart';

class AppSizer {
  static double _homeIndicatorHeight = 0;

  static void setHomeIndicatorStatus(BuildContext context) {
    double bottomPadding;

    if (Platform.isIOS) {
      bottomPadding = MediaQuery.of(context).padding.bottom;
      _homeIndicatorHeight = bottomPadding > 0 ? 21 : 0;
    } else {
      bottomPadding = MediaQuery.of(context).viewPadding.bottom;
      _homeIndicatorHeight = bottomPadding;
    }
  }

  static double getHomeIndicatorStatus() {
    return _homeIndicatorHeight;
  }
}
