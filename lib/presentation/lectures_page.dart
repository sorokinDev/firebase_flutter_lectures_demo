import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app/di.dart';
import '../app/routes.dart';

class LecturesPage extends StatefulWidget {
  LecturesPage({super.key});

  @override
  State<LecturesPage> createState() => _LecturesPageState();
}

class _LecturesPageState extends State<LecturesPage> {
  final _lecturesRepository = Locator.lecturesRepository;
  bool _isLoading = false;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text('Lectures page'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async {
                setState(() => _isLoading = true);
                await _lecturesRepository.fillDatabase();
                if (mounted) {
                  setState(() => _isLoading = false);
                }
              },
              child: _isLoading
                  ? const CupertinoActivityIndicator()
                  : const Text('Add lectures'),
            ),
          ],
        ),
      ),
    );
  }
}
