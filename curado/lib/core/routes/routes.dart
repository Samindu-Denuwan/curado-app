import 'package:curado/core/routes/pages.dart';
import 'package:curado/data/models/art_details_model.dart';
import 'package:curado/presentation/pages/account/account_view.dart';
import 'package:curado/presentation/pages/catalogue/artist_details_view.dart';
import 'package:curado/presentation/pages/events/events_view.dart';
import 'package:curado/presentation/pages/home/art_inquiry_view.dart';
import 'package:curado/presentation/pages/home/home_view.dart';
import 'package:curado/presentation/pages/splash/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../data/models/artist_details_model.dart';
import '../../data/models/event_details_model.dart';
import '../../presentation/pages/catalogue/catalogue_view.dart';
import '../../presentation/pages/events/event_detail_view.dart';
import '../../presentation/pages/home/art_details_view.dart';
import 'bottom_nav_bar.dart' show BottomNavBar;
import 'go_router_observer.dart';
import 'router_services.dart';

class AppRouter {
  final RouterServices routerServices;
  AppRouter({required this.routerServices});

  GoRouter get router => _goRouter;

  final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'root',
  );
  final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  late final GoRouter _goRouter = GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: routerServices,
    navigatorKey: _rootNavigatorKey,
    initialLocation: Pages.homeRoute.toPath(),
    observers: [GoRouterObserver()],
    routes: [
      GoRoute(
        path: Pages.splashRoute.toPath(),
        name: Pages.splashRoute.toPathName(),
        pageBuilder: (context, state) {
          return NoTransitionPage(
            key: state.pageKey,
            child: const SplashView(),
          );
        },
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return BottomNavBar(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Pages.homeRoute.toPath(),
            name: Pages.homeRoute.toPathName(),
            pageBuilder: (context, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const HomeView(),
              );
            },
            routes: [
              GoRoute(
                parentNavigatorKey: _shellNavigatorKey,
                path: Pages.artDetailsRoute.toPath(isSubRoute: true),
                name: Pages.artDetailsRoute.toPathName(),
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    key: state.pageKey,
                    child: ArtDetailsView(
                      artDetails: state.extra as ArtDetails?,
                    ),
                    transitionsBuilder:
                        (
                          BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child,
                        ) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                  );
                },
                routes: const [],
              ),
              GoRoute(
                parentNavigatorKey: _shellNavigatorKey,
                path: Pages.artInquiryRoute.toPath(isSubRoute: true),
                name: Pages.artInquiryRoute.toPathName(),
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    key: state.pageKey,
                    child: ArtInquiryView(
                      artDetails: state.extra as ArtDetails?,
                    ),
                    transitionsBuilder:
                        (
                          BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child,
                        ) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                  );
                },
                routes: const [],
              ),
            ],
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Pages.catalogueRoute.toPath(),
            name: Pages.catalogueRoute.toPathName(),
            pageBuilder: (context, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: CatalogueView(),
              );
            },
            routes: [
              GoRoute(
                parentNavigatorKey: _shellNavigatorKey,
                path: Pages.artistDetailsRoute.toPath(isSubRoute: true),
                name: Pages.artistDetailsRoute.toPathName(),
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    key: state.pageKey,
                    child: ArtistDetailsView(
                      artistDetails: state.extra as ArtistDetails?,
                    ),
                    transitionsBuilder:
                        (
                          BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child,
                        ) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                  );
                },
                routes: const [],
              ),
            ],
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Pages.eventsRoute.toPath(),
            name: Pages.eventsRoute.toPathName(),
            pageBuilder: (context, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const EventsView(),
              );
            },
            routes: [
              GoRoute(
                parentNavigatorKey: _shellNavigatorKey,
                path: Pages.eventDetailsRoute.toPath(isSubRoute: true),
                name: Pages.eventDetailsRoute.toPathName(),
                pageBuilder: (context, state) {
                  return CustomTransitionPage(
                    key: state.pageKey,
                    child: EventDetailView(
                      eventDetails: state.extra as EventDetails?,
                    ),
                    transitionsBuilder:
                        (
                          BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child,
                        ) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                  );
                },
                routes: const [],
              ),
            ],
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: Pages.accountRoute.toPath(),
            name: Pages.accountRoute.toPathName(),
            pageBuilder: (context, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const AccountView(),
              );
            },
            routes: const [],
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) {
      return NoTransitionPage(key: state.pageKey, child: Container());
    },
    redirect: (context, state) {
      String splashPath = state.namedLocation(Pages.splashRoute.toPathName());
      String homePath = state.namedLocation(Pages.homeRoute.toPathName());

      final bool isInitialized = routerServices.isInitialized;
      final bool isGoingToSplash = state.matchedLocation == splashPath;
      final bool isGoingToHome =
          state.matchedLocation.startsWith(Pages.homeRoute.toPath()) ||
          state.matchedLocation.startsWith(Pages.catalogueRoute.toPath()) ||
          state.matchedLocation.startsWith(Pages.eventsRoute.toPath()) ||
          state.matchedLocation.startsWith(Pages.accountRoute.toPath());

      if (!isInitialized && !isGoingToSplash) {
        return splashPath;
      }
      if (isInitialized && !isGoingToHome) {
        return homePath;
      }

      return null;
    },
  );
}
