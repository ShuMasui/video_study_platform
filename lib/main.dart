import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_study_platform/app.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 依存関係の初期化
  await setUpLocator();

  final scope = ProviderScope(child: const App());

  runApp(scope);
}
