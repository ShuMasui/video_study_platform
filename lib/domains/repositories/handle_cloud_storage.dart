abstract class HandleCloudStorage {
  /// クラウドストレージ上のファイルのダウンロードリンクを発行し取得します
  Future<String> getDownloadLink(String filePath);
}
