import 'package:curado/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/base_app.dart';
import 'app/injection.dart' as sl;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.bgColor,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  await sl.init();
  runApp(const ProviderScope(child: BaseApp()));
}
