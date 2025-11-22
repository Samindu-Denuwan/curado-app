class Pages {
  static const splashRoute = "splash";
  static const homeRoute = "home";
  static const catalogueRoute = "catalogue";
  static const eventsRoute = "events";
  static const accountRoute = "account";
  static const eventDetailsRoute = "event_details";
  static const artistDetailsRoute = "artist_details";
  static const artDetailsRoute = "art_details";
}

extension PagesExtension on String {
  String toPath({
    bool isSubRoute = false,
    String? pathParam,
    String? pathPrefix,
  }) {
    String path = this;
    if (pathPrefix != null && pathPrefix.isNotEmpty) {
      final prefix = pathPrefix.startsWith('/') ? pathPrefix : '/$pathPrefix';
      path = '$prefix/$path';
    } else {
      path = '/$path';
    }
    if (pathParam != null && pathParam.isNotEmpty) {
      final param = pathParam.startsWith(':') ? pathParam : ':$pathParam';
      path = '$path/$param';
    }
    if (isSubRoute) {
      path = path.replaceFirst('/', '');
    }
    return path;
  }

  String toPathName() {
    return replaceFirst('/', '').toUpperCase();
  }
}
