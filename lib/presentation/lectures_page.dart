import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import '../app/routes.dart';

class LecturesPage extends StatelessWidget {
  const LecturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.of(context).pushNamed(AppRoutes.profile),
          child: const UserAvatar(
            size: 36,
          ),
        ),
      ),
      body: const Center(
        child: Text('Lectures page'),
      ),
    );
  }
}
