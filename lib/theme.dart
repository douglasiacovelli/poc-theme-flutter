import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poc_theme/theme_data.dart';

class MThemeWrapper extends StatelessWidget {
  final MThemeData themeData;
  final WidgetBuilder builder;

  MThemeWrapper({@required this.themeData, @required this.builder});

  @override
  Widget build(BuildContext context) {
    return MTheme(
      themeData: themeData,
      child: LayoutBuilder(builder: (context, _) => builder(context)),
    );
  }
}

class MTheme extends InheritedWidget {
  final MThemeData themeData;

  MTheme({this.themeData, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static MThemeData of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MTheme>(aspect: MTheme).themeData;
}

class MThemeData implements AppTheme {
  AppTheme _currentTheme;

  MThemeData({bool darkMode = false}) {
    setTheme(darkMode);
  }

  void setTheme(bool darkMode) {
    _currentTheme = darkMode ? DarkTheme() : LightTheme();
  }

  @override
  Color get backgroundColor => _currentTheme.backgroundColor;

  @override
  Color get highEmphasisTextColor => _currentTheme.highEmphasisTextColor;

  @override
  Color get mediumEmphasisTextColor => _currentTheme.mediumEmphasisTextColor;

  @override
  TextStyle get body1 => _currentTheme.body1;

  @override
  TextStyle get body1MediumEmphasis => _currentTheme.body1MediumEmphasis;
}
