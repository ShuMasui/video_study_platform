import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_study_platform/domains/repositories/handle_storage.dart';
import 'package:video_study_platform/locator.dart';

part 'providers.g.dart';

@riverpod
HandleStorage handleStorage(Ref ref) {
  return locator<HandleStorage>();
}
