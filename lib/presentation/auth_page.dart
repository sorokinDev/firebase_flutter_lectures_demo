import 'package:firebase_lectures/app/di.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app/logger.dart';
import '../app/routes.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _userRepository = Locator.userRepository;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providers: [
        EmailAuthProvider(),
      ],
      styles: const {
        EmailFormStyle(signInButtonVariant: ButtonVariant.filled),
      },
      footerBuilder: (context, authAction) {
        return OutlinedButton(
          onPressed: _signInAnonymously,
          child: _isLoading
              ? const CupertinoActivityIndicator()
              : const Text('Be Anonymous'),
        );
      },
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {}),
      ],
    );
  }

  Future<void> _signInAnonymously() async {
    setState(() => _isLoading = true);

    await _userRepository.signInAnonymously();

    if (_userRepository.isAuthorized) {
      _navigateHome();
    } else {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _navigateHome() async {
    logger.d(_userRepository.user);
    await Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.lectures,
      ModalRoute.withName('/'),
    );
  }
}
