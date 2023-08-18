import 'package:toktik/domain/entities/video_post.dart';

import '../../domain/datasources/video_post_datasource.dart';
import '../../domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoPostDataSource;

  VideoPostRepositoryImpl({
    required this.videoPostDataSource,
  });

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoPage(int page) async {
    return await videoPostDataSource.getTrendingVideoPage(page);
  }
}
