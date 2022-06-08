import 'package:flutter/material.dart';
import 'package:minimalist_todo/screens/screens_exports.dart';

class RouteManager {
  static const String authScreen = '/auth';
  static const String homeScreen = '/home';
  static const String createTodoScreen = '/todo/create';
  static const String todoDetailsScreen = '/todo/details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authScreen:
        return MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case todoDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const TodoDetailsScreen(),
        );
      case createTodoScreen:
        return MaterialPageRoute(
          builder: (context) => CreateTodoScreen(),
        );
      // TODO: Not Found Page Screen
      default:
        throw const FormatException('Route not found! Check routes again.');
    }
  }
}
