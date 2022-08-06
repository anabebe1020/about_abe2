import 'package:about_abe_2/constants/firebase.dart';
import 'package:about_abe_2/models/discography/model.dart';
import 'package:anabebe_packages/anabebe_packages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ViewModel for the HistoryScreen.
class FirebaseAPI {
  final _logger = Logger();

  Future<void> init() async {
    // logger
    _logger.setup('FirebaseAPI');
    // firebase
    await Firebase.initializeApp();
  }
}

final discographiesStreamProvider =
    StreamProvider<List<DiscographyModel>>((ref) {
  //
  final collection = FirebaseFirestore.instance //
      .collection(FirebaseConst().storeHistoryConId);
  //
  return collection.snapshots().map((ss) {
    final doc = ss.docs.firstWhere(
        (document) => document.id == FirebaseConst().storeHistoryDocId);
    final histories = doc.data()['history'].cast<Map<String, dynamic>>()
        as List<Map<String, dynamic>>;
    final models =
        histories.map((history) => DiscographyModel.fromJson(history)).toList();
    // ToDo: ちゃんとtoでソートしたい
    return List.from(models.reversed);
  });
});
