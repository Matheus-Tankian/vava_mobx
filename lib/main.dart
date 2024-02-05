import 'package:flutter/material.dart';
import 'package:vava_mobx/src/app.dart';
import 'package:vava_mobx/src/core/app_thema.dart';

void main() {
  runApp(const MyApp());
}

final navigationApp = GlobalKey<NavigatorState>(debugLabel: "navigationApp");
final navigationScreen =
    GlobalKey<NavigatorState>(debugLabel: "navigationScreen");

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationApp,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themas().customTheme,
      home: const App(),
    );
  }
}
