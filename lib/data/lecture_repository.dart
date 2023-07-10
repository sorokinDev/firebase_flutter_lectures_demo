import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_lectures/app/logger.dart';
import 'package:firebase_lectures/data/prefiling_data.dart';

import '../models/lecture.dart';

class LecturesRepository {
  final FirebaseFirestore _firestore;

  LecturesRepository(this._firestore);

  late final _lecturesCollectionRef =
      _firestore.collection('lectures').withConverter(
            fromFirestore: (snapshot, _) => Lecture.fromJson(snapshot.data()!),
            toFirestore: (lesson, _) => lesson.toJson(),
          );

  Stream<List<Lecture>> get lecturesStream => _lecturesCollectionRef
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());

  // ---------- FOR TESTING PURPOSE -------------------------------
  Future<void> fillDatabase() async {
    // for (final lecture in lecturesPrefilingData) {
    //   await _lecturesCollectionRef.add(lecture);
    // }

    // await _firestore.runTransaction((transaction) async {
    //   for (final lecture in lecturesPrefilingData) {
    //     transaction.set(_lecturesCollectionRef.doc(), lecture);
    //   }
    // });

    final batch = _firestore.batch();
    for (final lecture in lecturesPrefilingData) {
      batch.set(_lecturesCollectionRef.doc(), lecture);
    }
    await batch.commit();

    logger.d('Filled Database');
  }

  Future<void> clearDatabase() async {
    final lecturesSnapshot = await _lecturesCollectionRef.get();
    await _firestore.runTransaction((transaction) async {
      for (final doc in lecturesSnapshot.docs) {
        transaction.delete(doc.reference);
      }
    });
    logger.d('Cleared Database');
  }
}
