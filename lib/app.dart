// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:video_study_platform/interfaces/router/app_router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: '動画教材ライブラリー',
      routerConfig: ref.watch(routerProvider),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(
              seedColor: const Color(0xFF3F51B5),
              brightness: Brightness.light,
            ).copyWith(
              primary: const Color(0xFF3F51B5),
              secondary: const Color(0xFF00BCD4),
              primaryContainer: const Color(0xFFE8EAF6),
              onPrimaryContainer: const Color(0xFF1A237E),
            ),
        cardTheme: CardThemeData(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          iconTheme: IconThemeData(color: Colors.black87),
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Premium Dark Theme
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(
              seedColor: const Color(0xFF3F51B5),
              brightness: Brightness.dark,
            ).copyWith(
              primary: const Color(0xFF7986CB),
              secondary: const Color(0xFF4DD0E1),
              primaryContainer: const Color(0xFF283593).withValues(alpha: 0.4),
              onPrimaryContainer: const Color(0xFFE8EAF6),
            ),
        cardTheme: CardThemeData(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          iconTheme: IconThemeData(color: Colors.white70),
          titleTextStyle: TextStyle(
            color: Colors.white70,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      themeMode: ThemeMode.system,
    ); // Follow system brightness (Dark/Light mode));
  }
}
