import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerCustomSubtitle extends StatefulWidget {
  final List<String> videoIds = const [
    'TJxgKTiYzfE',
    'SMOZ5JjRBng',
  ];
  // Add more video IDs to this list

  const YoutubePlayerCustomSubtitle({Key? key}) : super(key: key);

  @override
  State<YoutubePlayerCustomSubtitle> createState() =>
      _YoutubePlayerCustomSubtitleState();
}

class _YoutubePlayerCustomSubtitleState
    extends State<YoutubePlayerCustomSubtitle> {
  late List<YoutubePlayerController> _controllers;

  String subtitleText = "";

  @override
  void initState() {
    super.initState();
    _controllers = widget.videoIds
        .map((videoId) => YoutubePlayerController(
            initialVideoId: videoId,
            flags: const YoutubePlayerFlags(autoPlay: false, mute: false))
          ..addListener(_onPlayerStateChange))
        .toList();
  }

  void _onPlayerStateChange() {
    // Your existing code here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text("የኢትዮጵያ ቁጥሮች"),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: widget.videoIds.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              YoutubePlayer(controller: _controllers[index]),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 190),
                child: Text(
                  subtitleText,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}

class Subtitle {
  final int start;
  final int end;
  final String text;

  const Subtitle({required this.start, required this.end, required this.text});
}
