import '../entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId);
  Future<List<VideoPost>> getTrendingVideoPage(int page);
}
