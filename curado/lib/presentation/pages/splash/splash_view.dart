import 'package:curado/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../../app/injection.dart';
import '../../../core/routes/router_services.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final RouterServices routerServices = sl<RouterServices>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((e) => _mockLoad());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.greenAccent);
  }

  void _mockLoad() {
    Future.delayed(
      Duration(seconds: 3),
      () => routerServices.isInitialized = true,
    );
  }
}
