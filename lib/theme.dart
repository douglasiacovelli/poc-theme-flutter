import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poc_theme/app_theme.dart';

class MThemeWrapper extends StatelessWidget {
  final AppTheme theme;
  final WidgetBuilder builder;

  MThemeWrapper({
    @required this.theme,
    @required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return MTheme(
      theme: theme,
      child: LayoutBuilder(builder: (context, _) => builder(context)),
    );
  }
}

class MTheme extends InheritedWidget {
  final AppTheme theme;

  MTheme({this.theme, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static AppTheme of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MTheme>(aspect: MTheme).theme;
}

class GlobalAppTheme extends InheritedWidget {
  final darkMode;

  GlobalAppTheme({
    @required this.darkMode,
    @required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static GlobalAppTheme of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType(aspect: GlobalAppTheme);
}
