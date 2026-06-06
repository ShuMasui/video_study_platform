abstract class HandleVideoStorage {
  Future<void> save(Map<String, dynamic> json);

  /// {key: dynamic} 形式のデータを提供する
  Future<Map<String, dynamic>?> load();

  /// ビデオデータ保存のkeyを取得できる
  String get getVideoDataKey;

  Future<void> init();
}
