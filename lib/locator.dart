import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_study_platform/domains/repositories/handle_cloud_storage.dart';
import 'package:video_study_platform/domains/repositories/handle_video_storage.dart';
import 'package:video_study_platform/interfaces/storage/handle_cloud_storage_impl.dart';
import 'package:video_study_platform/interfaces/storage/handle_video_storage_impl.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  final SharedPreferencesAsync prefs = SharedPreferencesAsync();

  // SharedPreferencesAsyncのシングルトン注入
  locator.registerSingleton<SharedPreferencesAsync>(prefs);

  // HandleVideStorage リポジトリの注入
  locator.registerSingleton<HandleVideoStorage>(
    HandleVideoStorageImpl(locator<SharedPreferencesAsync>()),
  );

  // データベースの初期化
  locator<HandleVideoStorage>().init();

  // FirebaseStorageのシングルトン注入
  locator.registerSingleton<FirebaseStorage>(FirebaseStorage.instance);

  // HandleCloudStorage リポジトリの注入
  locator.registerSingleton<HandleCloudStorage>(
    HandleCloudStorageImpl(locator<FirebaseStorage>()),
  );
}
