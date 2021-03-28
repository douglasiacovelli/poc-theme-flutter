import 'package:flutter/material.dart';
import 'package:poc_theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MTheme(
      themeData: MThemeData(darkMode: false),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MTheme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: MTheme.of(context).backgroundColor,
        title: Text(
          widget.title,
          style: MTheme.of(context).body1,
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
              themeData: MThemeData(darkMode: true),
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
    );
  }
}
