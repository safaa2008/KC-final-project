import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class way_horses_abused extends StatelessWidget {
  way_horses_abused({super.key});

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "GWHuJ9qSfa0",
      flags: YoutubePlayerFlags(autoPlay: true, mute: true));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('لغه الجسد مع الخيل '),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
          ),
          Image.network(""),
        ],
      )),
    );
  }
}
