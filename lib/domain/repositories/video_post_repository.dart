import '../entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId);
  Future<List<VideoPost>> getTrendingVideoPage(int page);
}


// El repositorio llama al datasource y data source realiza el trabajo de obtener los datos de la fuente de datos.