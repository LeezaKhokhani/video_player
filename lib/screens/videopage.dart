import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class FullScreen extends StatefulWidget {
  FullScreen({Key? key, required this.Resource, required this.chewieController})
      : super(key: key);
  String Resource = "assets/video/Shark.mp4";
  ChewieController? chewieController;
  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.Resource);
    _controller.initialize().then((value) => setState(() {}));
    _chewieController = ChewieController(videoPlayerController: _controller);
    _chewieController.autoInitialize;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("MyTube"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Chewie(
                controller: widget.chewieController!,
              ),
            ),
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _chewieController.dispose();
  }
}