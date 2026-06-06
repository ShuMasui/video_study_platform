import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_study_platform/usecases/fetch_video_list.dart';
import 'package:video_study_platform/usecases/fetch_video_data.dart';
import 'package:video_study_platform/domains/repositories/providers.dart';

part 'providers.g.dart';

@riverpod
FetchVideoList fetchVideoList(Ref ref) {
  final handleStorage = ref.watch(handleStorageProvider);
  return FetchVideoList(handleStorage);
}

@riverpod
FetchVideoData fetchVideoData(Ref ref) {
  final handleStorage = ref.watch(handleStorageProvider);
  return FetchVideoData(handleStorage);
}
