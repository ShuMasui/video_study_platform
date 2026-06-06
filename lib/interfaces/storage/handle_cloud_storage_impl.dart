import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:video_study_platform/domains/repositories/handle_cloud_storage.dart';

import 'package:path_provider/path_provider.dart';

class HandleCloudStorageImpl extends HandleCloudStorage {
  HandleCloudStorageImpl(this.storage);

  final FirebaseStorage storage;

  @override
  Future<String> getDownloadLink(String filePath) async {
    try {
      final storageRef = storage.ref().child(filePath);

      final downloadLink = await storageRef.getDownloadURL();

      return downloadLink;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception('ダウンロードURLの発行に失敗しました\n${e.toString()}');
    }
  }
}
