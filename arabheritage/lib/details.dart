import 'package:arabheritage/horses.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.flutter});

  final horse flutter;
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "oWUcHM9GLTY",
      flags: YoutubePlayerFlags(autoPlay: true, mute: true));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Image.network(flutter.image),
      Text(flutter.name),
      YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
        onReady: () {},
      ),
    ])));
  }
}
