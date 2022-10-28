import 'package:injectable/injectable.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

abstract class VideoService {
  /// Generate thumbnail for passed video path
  ///
  /// Return thumbnail path
  Future<String> makeThumbnail(String path);
}

@Singleton(as: VideoService)
class VideoServiceImpl implements VideoService {
  @override
  Future<String> makeThumbnail(String path) async {
    final thumbnailPath = await VideoThumbnail.thumbnailFile(
      video: path,
      imageFormat: ImageFormat.JPEG,
      timeMs: 500,
    );
    if (thumbnailPath == null) throw "Video Thumbnail Error";
    return thumbnailPath;
  }
}
