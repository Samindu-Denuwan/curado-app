import 'package:get_it/get_it.dart';

import '../core/routes/router_services.dart';
import '../core/routes/routes.dart';

final sl = GetIt.I;

Future<void> init() async {
  sl.registerSingleton(RouterServices());
  sl.registerSingleton(AppRouter(routerServices: sl()));
}
