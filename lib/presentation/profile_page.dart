import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../app/di.dart';
import '../app/routes.dart';

class ProfilePage extends StatelessWidget {
  final _userRepository = Locator.userRepository;

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () async {
                await _userRepository.signOut();
                if (context.mounted) {
                  await Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.auth,
                    ModalRoute.withName('/'),
                  );
                }
              },
              icon: const Icon(Icons.logout_rounded),
            ),
          ],
        ),
        body: StreamBuilder<User?>(
          stream: _userRepository.userStream,
          builder: (context, snapshot) {
            final user = snapshot.data;
            if (user == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Firebase User Info:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Is anonymous: ${user.isAnonymous}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Name: ${user.displayName ?? 'none'}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Created at: ${user.metadata.creationTime}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Email: ${user.email ?? 'none'}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            );
          },
        ),
      );
}
