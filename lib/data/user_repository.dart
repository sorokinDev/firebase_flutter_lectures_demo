import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository(
    this._firebaseAuth,
  );

  bool get isAuthorized => _firebaseAuth.currentUser != null;
  User? get user => _firebaseAuth.currentUser;

  Stream<User?> get userStream => _firebaseAuth.userChanges();

  Future<void> signInAnonymously() async {
    await _firebaseAuth.signInAnonymously();
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
