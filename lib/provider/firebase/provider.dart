import 'package:about_abe_2/api/firebase.dart';
import 'package:about_abe_2/models/discography/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final discographiesStreamProvider = StreamProvider<List<DiscographyModel>>(
  (ref) => FirebaseAPI().getDiscography().cast<List<DiscographyModel>>(),
);
