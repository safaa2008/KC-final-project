import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ArabAndHorse extends StatelessWidget {
  ArabAndHorse({super.key});

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "rT94POJPExs",
      flags: YoutubePlayerFlags(autoPlay: true, mute: true));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('الخيل و العرب '),
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
