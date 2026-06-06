abstract class HandleStorage {
  Future<void> save(Map<String, dynamic> json);

  /// {key: dynamic} 形式のデータを提供する
  Future<Map<String, dynamic>?> load(String key);

  Future<void> init();
}
