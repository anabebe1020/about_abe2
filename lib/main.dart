import 'package:about_abe_2/api/http.dart';
import 'package:about_abe_2/common/themes.dart';
import 'package:about_abe_2/pages/root/page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';

Future<void> main() async {
  // env file
  await dotenv.load(fileName: ".env");
  // initialize app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  HttpClient().init();
  // run
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About abe',
      theme: MyTheme.dark,
      home: const Root(),
    );
  }
}
