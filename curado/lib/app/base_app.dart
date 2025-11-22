import 'package:curado/core/routes/router_services.dart';
import 'package:curado/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/routes/routes.dart';
import 'injection.dart';

class BaseApp extends ConsumerStatefulWidget {
  const BaseApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseAppState();
}

class _BaseAppState extends ConsumerState<BaseApp> {
  final AppRouter routerServices = sl<AppRouter>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) {
        return MaterialApp.router(
          builder: (context, child) => GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: child!,
          ),

          routerConfig: routerServices.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(scaffoldBackgroundColor: AppColors.bgColor),
        );
      },
    );
  }
}
