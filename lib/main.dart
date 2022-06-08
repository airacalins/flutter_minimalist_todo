import 'package:flutter/material.dart';

import 'package:minimalist_todo/routes/routes.dart';
import 'package:minimalist_todo/screens/screens_exports.dart';
import 'package:minimalist_todo/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthScreen(),
      theme: Styles.appTheme,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
