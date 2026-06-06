// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:video_study_platform/domains/repositories/handle_cloud_storage.dart';
import 'package:video_study_platform/domains/repositories/handle_video_storage.dart';
import 'package:video_study_platform/locator.dart';

part 'providers.g.dart';

@riverpod
HandleVideoStorage handleVideoStorage(Ref ref) {
  return locator<HandleVideoStorage>();
}

@riverpod
HandleCloudStorage handleCloudStorage(Ref ref) {
  return locator<HandleCloudStorage>();
}
