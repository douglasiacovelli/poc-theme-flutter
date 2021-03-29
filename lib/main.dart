import 'package:flutter/material.dart';
import 'package:poc_theme/app_theme.dart';
import 'package:poc_theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  bool isDarkMode;

  @override
  void initState() {
    _updateTheme();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  void _updateTheme() {
    final brightness = WidgetsBinding.instance.window.platformBrightness;
    setState(() {
      isDarkMode = brightness == Brightness.dark;
    });
  }

  @override
  void didChangePlatformBrightness() {
    _updateTheme();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalAppTheme(
      darkMode: isDarkMode,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

void updateTheme() {}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MThemeWrapper(
      theme: AppTheme(context),
      builder: (context) => Scaffold(
        backgroundColor: MTheme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: MTheme.of(context).toolbarBackgroundColor,
          title: Text(
            widget.title,
            style: MTheme.of(context).toolbarTextStyle,
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Body1 High Emphasis',
                style: MTheme.of(context).body1,
              ),
              Text(
                'Body1 Medium Emphasis',
                style: MTheme.of(context).body1MediumEmphasis,
              ),
              MThemeWrapper(
                theme: Theme2(context),
                builder: (context) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Container(
                    decoration: BoxDecoration(
                      color: MTheme.of(context).backgroundColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        'Container inside of another theme',
                        style: MTheme.of(context).body1,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
