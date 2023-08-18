import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';
import 'package:toktik/presentation/widgets/video/video_background.dart';
import 'package:toktik/presentation/widgets/video_player/video_bottons.dart';

class VideoScrollableWidget extends StatelessWidget {
  const VideoScrollableWidget({
    Key? key,
    required this.videos,
  }) : super(key: key);

  final List<VideoPost> videos;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: videos.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final VideoPost video = videos[index];
        return Stack(
          children: [
            // Video player
            SizedBox.expand(
              child: FullScreenPlayerWidget(
                videoUrl: video.videoUrl,
                caption: video.caption,
              ),
            ),

            // Video background Gradient
            VideoBackground(
              stops: const [0.8, 1],
            ),

            // Video bottom buttons
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoBottomsWidget(videoPost: video),
            )
          ],
        );
      },
    );
  }
}
