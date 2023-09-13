import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class stabies_engineering extends StatelessWidget {
  stabies_engineering({super.key});
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "HFeLAkc",
      flags: YoutubePlayerFlags(autoPlay: true, mute: true));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(' بناء اسطبل يناسب الخيل'),
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
