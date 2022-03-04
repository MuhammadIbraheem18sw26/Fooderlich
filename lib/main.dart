import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';
import 'fooderlish_theme.dart';
import 'package:get/get.dart';

void main() => runApp(FooderlichApp());

class FooderlichApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return GetMaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: Home(),
    );
  }
}
