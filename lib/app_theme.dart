import 'package:flutter/widgets.dart';
import 'package:poc_theme/colors.dart';
import 'package:poc_theme/theme_widgets.dart';
import 'package:poc_theme/typography.dart';

class AppTheme {
  final BuildContext context;

  AppTheme(this.context);

  bool get darkMode => GlobalAppTheme.of(context).darkMode;

  Color get backgroundColor => darkMode ? Colors.black : Colors.white;
  Color get highEmphasisColor => darkMode ? Colors.white : Colors.black;
  Color get mediumEmphasisColor => darkMode ? Colors.white80 : Colors.black60;
  Color get toolbarBackgroundColor => Colors.blue;
  TextStyle get body1 => Typography.body1.copyWith(color: highEmphasisColor);
  TextStyle get body1MediumEmphasis => Typography.body1.copyWith(color: mediumEmphasisColor);
  TextStyle get body2 => Typography.body2.copyWith(color: highEmphasisColor);
  TextStyle get body2MediumEmphasis => Typography.body2.copyWith(color: mediumEmphasisColor);
  TextStyle get toolbarTextStyle => Typography.body1.copyWith(color: Colors.white);
}

class Theme2 extends AppTheme {
  Theme2(BuildContext context) : super(context);

  Color get backgroundColor => darkMode ? Colors.lightBlue : Colors.blue;
  Color get highEmphasisColor => darkMode ? Colors.black : Colors.white;
}
