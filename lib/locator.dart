import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_study_platform/domains/repositories/handle_storage.dart';
import 'package:video_study_platform/interfaces/storage/handle_storage_impl.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  final SharedPreferencesAsync prefs = SharedPreferencesAsync();

  // SharedPreferencesAsyncのシングルトン注入
  locator.registerSingleton<SharedPreferencesAsync>(prefs);

  // リポジトリの注入
  locator.registerSingleton<HandleStorage>(
    HandleStorageImpl(locator<SharedPreferencesAsync>()),
  );

  // データベースの初期化
  locator<HandleStorage>().init();
}
