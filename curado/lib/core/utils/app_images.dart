const String kSVGType = '.svg';
const String kPngType = '.png';
const String kJpgType = '.jpg';

class AppImages {
  // Base path for PNG images
  static String get kPNGImagePath => "assets/png/";

  // Base path for SVG images
  static String get kSVGImagePath => "assets/svg/";

  // Base path for JPG images
  static String get kJPGImagePath => "assets/jpg/";

  ///SVG
  static String get homeIcon => '${kSVGImagePath}home$kSVGType';
  static String get catalogueIcon => '${kSVGImagePath}catalogue$kSVGType';
  static String get eventsIcon => '${kSVGImagePath}events$kSVGType';
  static String get accountIcon => '${kSVGImagePath}account$kSVGType';
  static String get menuIcon => '${kSVGImagePath}menu$kSVGType';
  static String get next => '${kSVGImagePath}next$kSVGType';
  static String get back => '${kSVGImagePath}back$kSVGType';
  static String get filter => '${kSVGImagePath}filter$kSVGType';

  ///PNG
  static String get curadoLogo => '${kPNGImagePath}curado_logo$kPngType';

  ///JPG
  static String get defaultImg => '${kJPGImagePath}defaultImg$kJpgType';
}
