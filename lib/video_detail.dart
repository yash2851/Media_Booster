import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:new_media_player/video_model.dart';
import 'package:provider/provider.dart';

import 'Provider.dart';

class VideoDetailScreen extends StatefulWidget {
  final videoDetails;

  VideoDetailScreen({super.key, this.videoDetails});

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  void initState() {
    _initPlayer();
    super.initState();
  }

  HomeScreenProvider? hp;

  @override
  void didChangeDependencies() {
    hp = Provider.of<HomeScreenProvider>(context, listen: false);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    hp!.videoPlayerController.dispose();
    hp!.chewieController!.dispose();
    super.dispose();
  }

  void _initPlayer() async {
    final providerVal = Provider.of<HomeScreenProvider>(context, listen: false);
    providerVal.setVideoPlayer = videoList[widget.videoDetails].video;
  }

  @override
  Widget build(BuildContext context) {
    final providerVal = Provider.of<HomeScreenProvider>(context, listen: true);
    return Scaffold(
      body: providerVal.chewieController != null
          ? Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Chewie(
                controller: providerVal.chewieController!,
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
