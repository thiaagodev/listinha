import 'package:flutter/material.dart';
import 'package:listinha/src/shared/themes/themes.dart';

import '../main.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'LISTINHA'),
    );
  }
}
