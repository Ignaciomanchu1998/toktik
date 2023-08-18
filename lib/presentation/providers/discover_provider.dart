import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> videos = [];
  bool initialLoading = false;
  final VideoPostRepository videoPostRepository;

  DiscoverProvider({
    required this.videoPostRepository,
  });

  Future<void> loadNextPage() async {
    initialLoading = true;

    final videoPosts = await videoPostRepository.getTrendingVideoPage(1);

    videos.addAll(videoPosts);
    initialLoading = false;
    notifyListeners();
  }
}
