import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_study_platform/app.dart';
import 'package:video_study_platform/firebase_options.dart';
import 'locator.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await FirebaseAppCheck.instance.activate(
    providerWeb: ReCaptchaV3Provider(
      '6LcarA8tAAAAALOS33WbTQuWUZ8cob8YqnSUgewt',
    ),
  );

  // 依存関係の初期化
  await setUpLocator();

  final scope = ProviderScope(child: const App());

  runApp(scope);
}
