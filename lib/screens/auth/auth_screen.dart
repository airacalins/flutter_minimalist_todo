import 'package:flutter/material.dart';
import 'package:minimalist_todo/routes/routes.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Login'),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(RouteManager.homeScreen),
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
