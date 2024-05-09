import 'package:flutter/material.dart';
import 'package:tarikh_islami/model/player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

final videoUrls = [
  'https://www.youtube.com/watch?v=hkNhrz1tbYo',
  'https://www.youtube.com/watch?v=SAEvHVHzbyg',
  'https://www.youtube.com/watch?v=TucQUve6FcA',
  'https://www.youtube.com/watch?v=346iaux6kEc',
  'https://www.youtube.com/watch?v=zqp_WQHBncQ',
  'https://www.youtube.com/watch?v=siw46NcudFA'
];

class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Video',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: videoUrls.length,
          itemBuilder: (context, index) {
            final videoID = YoutubePlayer.convertUrlToId(videoUrls[index]);

            return InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Player(videoId: videoID),
                ));
              },
              child:
                  Image.network(YoutubePlayer.getThumbnail(videoId: videoID!)),
            );
          }),
    );
  }

  Widget thumbnail() {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      color: Colors.blue,
      child: const Center(
        child: Text("THUMBNAIL"),
      ),
    );
  }
}
