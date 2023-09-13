import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class evidence_from_sunnah_and_quran extends StatelessWidget {
  evidence_from_sunnah_and_quran({super.key});

  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "jkW79GLJxQw",
      flags: YoutubePlayerFlags(autoPlay: true, mute: true));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('خيل الرسول'),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
          ),
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1r0eMIPJRH2O6B9B5K1V68sbdtZr5iuIMZw&usqp=CAU"),
        ],
      )),
    );
  }
}
