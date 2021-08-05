import 'package:flutter/material.dart';
import 'package:heroes/locator.dart';
import 'package:heroes/ui/pages/home/home_page.dart';
import 'package:heroes/ui/theme/theme.dart';

void main() {
  initLocator();

  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(context),
      home: HomePage(),
    );
  }
}
