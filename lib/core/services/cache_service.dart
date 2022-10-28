import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:better_player/better_player.dart';

part 'cache_service.freezed.dart';

@freezed
class CacheEvent with _$CacheEvent {
  const factory CacheEvent.download(int progress) = CacheDownload;
  const factory CacheEvent.finish({required String path}) = CacheFinish;
}

abstract class CacheService {
  /// Download file from URL (String) and cache it
  ///
  /// Return Stream progress ([CacheDownload]) in percent (from 0 to 100) while downloading  or [CacheFinish] if cached
  Stream<CacheEvent> cache(String url);

  /// Get cached file from URL (String) if exist
  ///
  /// Return path to file or null
  Future<String?> get(String url);

  /// Clean All Cache
  static Future<void> clean() async {
    // Clean video cache better_player
    await BetterPlayerController(const BetterPlayerConfiguration())
        .clearCache();

    // Clean cache from flutter_cache_manager
    await DefaultCacheManager().emptyCache();
  }
}

@Injectable(as: CacheService)
class CacheServiceImpl implements CacheService {
  @override
  Stream<CacheEvent> cache(String url) {
    return DefaultCacheManager()
        .getFileStream(url, withProgress: true)
        .map((event) {
      if (event is DownloadProgress) {
        return CacheDownload(
            event.progress != null ? (event.progress! * 100).toInt() : 0);
      } else {
        return CacheFinish(path: (event as FileInfo).file.path);
      }
    });
  }

  @override
  Future<String?> get(String url) async {
    final fileInfo = await DefaultCacheManager().getFileFromCache(url);
    if (fileInfo != null) {
      return fileInfo.file.path;
    }
    return null;
  }
}
