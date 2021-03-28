import 'package:flutter/widgets.dart';
import 'package:poc_theme/typography.dart';

abstract class AppTheme {
  Color get backgroundColor;
  Color get highEmphasisTextColor;
  Color get mediumEmphasisTextColor;

  // Typography
  TextStyle get body1;
  TextStyle get body1MediumEmphasis;
}

class LightTheme implements AppTheme {
  @override
  Color get backgroundColor => Color(0xFFFFFFFF);
  @override
  Color get highEmphasisTextColor => Color(0xFF000000);
  @override
  Color get mediumEmphasisTextColor => Color(0x99000000);

  @override
  TextStyle get body1 => Typography.body1.copyWith(color: highEmphasisTextColor);

  @override
  TextStyle get body1MediumEmphasis => Typography.body1.copyWith(color: mediumEmphasisTextColor);
}

class DarkTheme implements AppTheme {
  @override
  Color get backgroundColor => Color(0xFF1C2940);

  @override
  Color get highEmphasisTextColor => Color(0xFFFFFFFF);

  @override
  Color get mediumEmphasisTextColor => Color(0xCCFFFFFF);

  @override
  TextStyle get body1 => Typography.body1.copyWith(color: highEmphasisTextColor);

  @override
  TextStyle get body1MediumEmphasis => Typography.body1.copyWith(color: mediumEmphasisTextColor);
}
