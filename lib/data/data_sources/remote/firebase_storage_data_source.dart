import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

abstract class FirebaseStorageDataSource {
  /// Upload file to Firebase Storage
  ///
  /// Return File Url
  Future<String> uploadFile(
      {required String path, required String fileName, required String ref});

  /// Delete file from Firebase Storage
  Future<void> deleteFile({required String fileName, required String ref});
}

// TODO EXCEPTIONS
@Singleton(as: FirebaseStorageDataSource)
class FirebaseStorageDataSourceImpl implements FirebaseStorageDataSource {
  final _storage = FirebaseStorage.instance;

  @override
  Future<String> uploadFile({
    required String path,
    required String fileName,
    required String ref,
  }) async {
    try {
      await _storage.ref(ref).child(fileName).putFile(File(path));
      String fileUrl = await _storage.ref(ref).child(fileName).getDownloadURL();

      return fileUrl;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> deleteFile({
    required String fileName,
    required String ref,
  }) async {
    try {
      await _storage.ref(ref).child(fileName).delete();
    } catch (e) {
      log(e.toString());
    }
  }
}
