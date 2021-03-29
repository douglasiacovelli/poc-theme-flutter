# POC - Flutter custom theme

The main goal was to create a custom theme with support to dark/light mode.

## How it was done

It was created using [Inherited Widgets](https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html).  
- The `GlobalAppTheme` is an Inherited Widget that stores the dark mode.
- The `MTheme` is another Inherited Widget that holds the theme itself. There can be multiple levels of nested theming.
- The `ThemeWrapper` is simply a widget helper that will receive both the theme (`AppTheme`) and a builder. This is useful because, otherwise, it'd be necessary to add both the `MTheme` and then the `LayoutBuilder` to get the right context. For more info on that check [this page](https://api.flutter.dev/flutter/widgets/BuildContext-class.html).


