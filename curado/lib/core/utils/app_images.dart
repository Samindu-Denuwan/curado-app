const String kSVGType = '.svg';
const String kPngType = '.png';

class AppImages {
  // Base path for PNG images
  static String get kPNGImagePath => "assets/png/";

  // Base path for SVG images
  static String get kSVGImagePath => "assets/svg/";

  ///SVG
  static String get homeIcon => '${kSVGImagePath}home$kSVGType';
  static String get catalogueIcon => '${kSVGImagePath}catalogue$kSVGType';
  static String get eventsIcon => '${kSVGImagePath}events$kSVGType';
  static String get accountIcon => '${kSVGImagePath}account$kSVGType';
}
