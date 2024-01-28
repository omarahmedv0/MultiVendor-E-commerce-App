import 'package:flutter/material.dart';

class AppFont {
  static TextStyle getTitleLargeFont(
    BuildContext context, {
    double fontSize = 30,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
      color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle getTitleMidFont(
    BuildContext context, {
    double fontSize = 26,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      color: fontColor,
      overflow: TextOverflow.ellipsis,
      fontWeight: fontWeight,
    );
  }

  static TextStyle getTitleSmallFont(
    BuildContext context, {
    double fontSize = 22,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.w500,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
      color: fontColor,
      height: height,
      fontWeight: fontWeight,
    );
  }

  static TextStyle getSubtitle1(
    BuildContext context, {
    double fontSize = 20,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.w600,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
      color: fontColor,
      height: height,
      fontWeight: fontWeight,
    );
  }

  static TextStyle getLabelFont(
    BuildContext context, {
    double fontSize = 20,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      color: fontColor,
      fontWeight: fontWeight,
      height: height,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle getMediumFont(
    BuildContext context, {
    double fontSize = 16,
    Color fontColor = Colors.black,
    double? height,
    FontWeight fontWeight = FontWeight.w500,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      color: fontColor,
      height: height,
      decoration: decoration,
      fontWeight: fontWeight,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle getCaptionFont(
    BuildContext context, {
    double fontSize = 16,
    Color fontColor = Colors.grey,
    double? height,
    FontWeight fontWeight = FontWeight.w400,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      color: fontColor,
      height: height,
      decoration: decoration,
      fontWeight: fontWeight,
      overflow: TextOverflow.ellipsis,
    );
  }

  static TextStyle getCaption2Font(
    BuildContext context, {
    double fontSize = 22,
    Color fontColor = Colors.black,
    double? height,
    FontWeight fontWeight = FontWeight.w500,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      color: fontColor,
      height: height,
      decoration: decoration,
      fontWeight: fontWeight,
      overflow: TextOverflow.ellipsis,
    );
  }
}

/* double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  double scale = screenWidth / 1920;
  return scale * fontSize;
}
 */

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;

  static late double width, height;

  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}