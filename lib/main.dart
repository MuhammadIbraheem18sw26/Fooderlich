import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';
import 'fooderlish_theme.dart';

void main() => runApp(FooderlichApp());

class FooderlichApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: Home(),
    );
  }
}
