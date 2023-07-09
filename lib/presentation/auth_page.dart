import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Auth page'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                throw Exception('Crashlytics test');
              },
              child: const Text('Crash me'),
            ),
          ],
        ),
      ),
    );
  }
}
