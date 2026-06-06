// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import '../screens/home_screen.dart';
import '../screens/video_screen.dart';

part 'routes/_home_screen_route_data.dart';
part 'routes/_video_screen_route_data.dart';

part 'app_router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: HomeScreenRouteData().location,
    routes: $appRoutes,
  );
}
