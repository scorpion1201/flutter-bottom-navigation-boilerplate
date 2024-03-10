# Flutter BottomNavigationBar boilerplate

This is a boilerplate for a Flutter application that implements a NavigationBar at the bottom.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## NavigationBar

The `NavigationBar` widget is a material design widget that provides a navigation bar at the bottom of the screen. It is typically used to navigate between different views in an application.

The `NavigationBar` widget takes a list of `NavigationBarItem` widgets as its children. Each `NavigationBarItem` represents a single navigation destination.

The following code shows how to use the `NavigationBar` widget:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: const <NavigationBarItem>[
            NavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            NavigationBarItem(
              icon: Icon(Icons.settings),
              label: '설정',
            ),
          ],
        ),
      ),
    );
  }
}
```

This code will create a `NavigationBar` widget with two navigation destinations: "Home" and "Settings". When the user taps on a navigation destination, the corresponding view will be displayed.

The `NavigationBar` widget also provides a number of properties that can be used to customize its appearance and behavior. For example, the `backgroundColor` property can be used to change the background color of the navigation bar, and the `elevation` property can be used to change the shadow that is cast by the navigation bar.

## Dependencies

* [package_info_plus](https://pub.dev/packages/package_info_plus) - **The Chromium Authors**

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
