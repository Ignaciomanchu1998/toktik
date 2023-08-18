import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DiscoverProvider provider = context.watch();

    return Scaffold(
      body: provider.initialLoading
          ? const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : VideoScrollableWidget(videos: provider.videos),
    );
  }
}
